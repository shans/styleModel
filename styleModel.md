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

Looking at just whitespace. Graphs contain 180 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-6-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-6-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-6-3.png)

Without text nodes, the cost of updateStyle is linear, with an intercept of 296.2808081 and a slope of 1.7324411.

![](styleModel_files/figure-markdown_github/unnamed-chunk-8-1.png)

Introducing whitespace gives a cost that we assume fits a quadratic with 0 intercept, a constrained positive count term of 0, and a count^2 term of 0.0098904.

![](styleModel_files/figure-markdown_github/unnamed-chunk-9-1.png)
