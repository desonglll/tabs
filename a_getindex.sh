files=$(ls)
main=index.html
cat /dev/null > $main
echo '<!DOCTYPE html><html lang="zh-CN"><head><meta charset="UTF-8"><title>目录</title><style>
        @import url("https://fonts.googleapis.com/css2?family=Noto+Serif+SC:wght@200;300;400;500;600;700;900&family=Noto+Serif+TC:wght@200;300;400;500;600;700;900&display=swap");
        a {
            text-decoration-line: none;
        }

        ul {
            list-style-type: unset;
        }

        li {
            height: fit-content;
            margin: 5px;
            padding: 5px;

        }

        body {
            font-family: 'Noto Setif SC', 'Noto Setif TC', serif;
        }
    </style></head><body><a href="../index.html">back</a><h1>目录</h1><ul>' > $main
for i in $files; do
  if [ $i != 'index.html' ] && [ $i != 'a_getindex.sh' ] && [ $i != 'main.html' ]; then
    echo '<li><a href="./'$i'">'$i'</a></li>' >> $main
  fi
done
echo '</ul></body></html>' >> $main
echo '首页文件生成完毕'