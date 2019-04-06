.class public Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;
.super Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.source "YAxisRendererHorizontalBarChart.java"


# instance fields
.field protected mDrawZeroLinePathBuffer:Landroid/graphics/Path;

.field protected mRenderLimitLinesBuffer:[F

.field protected mRenderLimitLinesPathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 2
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 184
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mDrawZeroLinePathBuffer:Landroid/graphics/Path;

    .line 212
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 213
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    .line 27
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 5
    .param p1, "yMin"    # F
    .param p2, "yMax"    # F
    .param p3, "inverted"    # Z

    .prologue
    .line 41
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentHeight()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutX()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 44
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    .line 43
    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 45
    .local v0, "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 46
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    .line 45
    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 48
    .local v1, "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    if-nez p3, :cond_1

    .line 49
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p1, v2

    .line 50
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p2, v2

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 57
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 60
    .end local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->computeAxisValues(FF)V

    .line 61
    return-void

    .line 52
    .restart local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .restart local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_1
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p1, v2

    .line 53
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float p2, v2

    goto :goto_0
.end method

.method protected drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "fixedPosition"    # F
    .param p3, "positions"    # [F
    .param p4, "offset"    # F

    .prologue
    .line 136
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 149
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 147
    .restart local v1    # "text":Ljava/lang/String;
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    aget v2, p3, v2

    sub-float v3, p2, p4

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected drawZeroLine(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 190
    .local v0, "clipRestoreCount":I
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLineClippingRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 191
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLineClippingRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 192
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 195
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v3, v5, v5}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 197
    .local v1, "pos":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mDrawZeroLinePathBuffer:Landroid/graphics/Path;

    .line 201
    .local v2, "zeroLinePath":Landroid/graphics/Path;
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 203
    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v3, v4

    sub-float/2addr v3, v6

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 204
    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v3, v4

    sub-float/2addr v3, v6

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mZeroLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 210
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 171
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->getGridLineWidth()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 172
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getTransformedPositions()[F
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGetTransformedPositionsBuffer:[F

    array-length v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_0

    .line 155
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGetTransformedPositionsBuffer:[F

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mGetTransformedPositionsBuffer:[F

    .line 159
    .local v1, "positions":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    div-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 165
    return-object v1
.end method

.method protected linePath(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "i"    # I
    .param p3, "positions"    # [F

    .prologue
    .line 178
    aget v0, p3, p2

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    aget v0, p3, p2

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    return-object p1
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->getTransformedPositions()[F

    move-result-object v3

    .line 74
    .local v3, "positions":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 79
    const/high16 v6, 0x40200000    # 2.5f

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    .line 80
    .local v0, "baseYOffset":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v7, "Q"

    invoke-static {v6, v7}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v4, v6

    .line 82
    .local v4, "textHeight":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    .line 83
    .local v1, "dependency":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v2

    .line 85
    .local v2, "labelPosition":Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    const/4 v5, 0x0

    .line 87
    .local v5, "yPos":F
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v1, v6, :cond_3

    .line 89
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v2, v6, :cond_2

    .line 90
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v6

    sub-float v5, v6, v0

    .line 104
    :goto_1
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v6

    invoke-virtual {p0, p1, v5, v3, v6}, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->drawYLabels(Landroid/graphics/Canvas;F[FF)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v6

    sub-float v5, v6, v0

    goto :goto_1

    .line 97
    :cond_3
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v2, v6, :cond_4

    .line 98
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v6

    add-float/2addr v6, v4

    add-float v5, v6, v0

    goto :goto_1

    .line 100
    :cond_4
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v6

    add-float/2addr v6, v4

    add-float v5, v6, v0

    goto :goto_1
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 118
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 119
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 122
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 123
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 223
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v6

    .line 225
    .local v6, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 307
    :cond_0
    return-void

    .line 228
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    .line 229
    .local v8, "pts":[F
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 230
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 231
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 232
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 233
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 234
    .local v5, "limitLinePath":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 238
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LimitLine;

    .line 240
    .local v2, "l":Lcom/github/mikephil/charting/components/LimitLine;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 236
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 244
    .local v0, "clipRestoreCount":I
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 245
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v12

    neg-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 246
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 248
    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v12

    aput v12, v8, v11

    .line 249
    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v12

    aput v12, v8, v11

    .line 251
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v11, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 253
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v12

    aput v12, v8, v11

    .line 254
    const/4 v11, 0x3

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v12

    aput v12, v8, v11

    .line 256
    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 257
    const/4 v11, 0x2

    aget v11, v8, v11

    const/4 v12, 0x3

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 260
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 262
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 265
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 267
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 272
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 274
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 276
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v11

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getXOffset()F

    move-result v12

    add-float v9, v11, v12

    .line 280
    .local v9, "xOffset":F
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v11

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getYOffset()F

    move-result v12

    add-float v10, v11, v12

    .line 282
    .local v10, "yOffset":F
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v7

    .line 284
    .local v7, "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_4

    .line 286
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v11, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v4, v11

    .line 287
    .local v4, "labelLineHeight":F
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 288
    const/4 v11, 0x0

    aget v11, v8, v11

    add-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v12

    add-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 305
    .end local v4    # "labelLineHeight":F
    .end local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .end local v9    # "xOffset":F
    .end local v10    # "yOffset":F
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 289
    .restart local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .restart local v9    # "xOffset":F
    .restart local v10    # "yOffset":F
    :cond_4
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_5

    .line 291
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 292
    const/4 v11, 0x0

    aget v11, v8, v11

    add-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v12

    sub-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 293
    :cond_5
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_6

    .line 295
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 296
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v11, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v4, v11

    .line 297
    .restart local v4    # "labelLineHeight":F
    const/4 v11, 0x0

    aget v11, v8, v11

    sub-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v12

    add-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 300
    .end local v4    # "labelLineHeight":F
    :cond_6
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    const/4 v11, 0x0

    aget v11, v8, v11

    sub-float/2addr v11, v9

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v12

    sub-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
