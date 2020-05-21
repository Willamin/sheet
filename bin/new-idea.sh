#!/bin/bash

U=$(ruby -r securerandom -e 'puts SecureRandom.uuid')
touch "source/$U.md"
ruby -e "puts '# title here'; print '_idea uuid $U'; print '_'; puts; puts" > "source/$U.md"
echo "source/$U.md"
