docker run -ti --name=devcon \
-v $(pwd):/home/elixir/src/ \
-v ~/.hex/:/home/elixir/.hex/ \
-v ~/.npm/:/home/elixir/.npm/ \
-v ~/.mix/:/home/elixir/.mix/ \
-p 4000:4000 koenighotze/elixir /bin/bash
