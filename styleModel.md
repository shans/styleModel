Comparison of single selectors ".a .c", ".b ~ .c", and ".c" matching against variable number of element subtrees:

    <div class='a'>
      <div class='b'>
      </div>
      <div class='c'>
      </div>
    </div>

Three properties are set in a single rule:

    %SEL {
      background-color: red;
      width: 100px;
      height: 100px;
    }

Graphs contain 630 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-2-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-2-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-2-3.png)

As above, but without whitespace between divs (to avoid O(N^2) style). Graphs contain 150 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-4-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-4-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-4-3.png)

Looking at just whitespace. Graphs contain 120 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-6-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-6-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-6-3.png)
