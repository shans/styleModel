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

Looking at just whitespace. Graphs contain 420 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-6-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-6-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-6-3.png)

Without text nodes, the cost of updateStyle is linear, with an intercept of 357.1350649 and a slope of 1.6909928.

![](styleModel_files/figure-markdown_github/unnamed-chunk-8-1.png)

Introducing whitespace gives a cost that we assume fits a quadratic with 0 intercept, and constrained positive parameters of 0, 0.0101422.

![](styleModel_files/figure-markdown_github/unnamed-chunk-9-1.png)

No style at all (with and without whitespace). Graphs contain 460 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-11-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-11-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-11-3.png)

styleTest3

![](styleModel_files/figure-markdown_github/unnamed-chunk-13-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-13-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-13-3.png)

styleTest4

![](styleModel_files/figure-markdown_github/unnamed-chunk-15-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-15-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-15-3.png)

The same repeated rule, applying to 1000 elements. Graphs contain 100 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-17-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-17-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-17-3.png)

The same repeated rule with a different selector for each rule. One version applies to 1000 elements. Graphs contain 200 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-19-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-19-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-19-3.png)

The same repeated rule with a different selector for each rule. Each rule applies to a single element. Graphs contain 20 samples.

![](styleModel_files/figure-markdown_github/unnamed-chunk-21-1.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-21-2.png) ![](styleModel_files/figure-markdown_github/unnamed-chunk-21-3.png)
