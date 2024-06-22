# Alias starts with "g" and command starts with "git"
$1 ~ /^g/ && $2 ~ /^git / {
  # Find first occurence of single quote
  i = index($0, "'");
  # Get index after "git "
  start = i + 5;
  # Get length to extract, careful of trailing single quote
  len = length($0) - i - 5;
  # Extract git subcommand
  rest = substr($0, start, len);
  # Build chezmoi git command, escaping options with "--"
  print "alias ch" $1 "='chezmoi git -- " rest "'"
}
