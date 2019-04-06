.class public Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.super Lcom/github/mikephil/charting/renderer/AxisRenderer;
.source "YAxisRenderer.java"


# instance fields
.field protected mDrawZeroLinePath:Landroid/graphics/Path;

.field protected mGetTransformedPositionsBuffer:[F

.field protected mGridClippingRect:Landroid/graphics/RectF;

.field protected mLimitLineClippingRect:Landroid/graphics/RectF;

.field protected mRenderGridLinesPath:Landroid/graphics/Path;

.field protected mRenderLimitLines:Landroid/graphics/Path;

.field protected mRenderLimitLinesBuffer:[F

.field protected mYAxis:Lcom/github/mikephil/charting/components/YAxis;

.field protected mZeroLineClippingRect:Landroid/graphics/RectF;

.field protected mZeroLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V
    .locals 2
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0, p1, p3, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/AxisBase;)V

    .line 129
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderGridLinesPath:Landroid/graphics/Path;

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    .line 190
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGetTransformedPositionsBuffer:[F

    .line 213
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mDrawZeroLinePath:Landroid/graphics/Path;

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLineClippingRect:Landroid/graphics/RectF;

    .line 244
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderLimitLines:Landroid/graphics/Path;

    .line 245
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderLimitLinesBuffer:[F

    .line 246
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    .line 30
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 32
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawYLabels(Landroid/graphics/Canvas;F[FF)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "fixedPosition"    # F
    .param p3, "positions"    # [F
    .param p4, "offset"    # F

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    if-ge v0, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 127
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 125
    .restart local v1    # "text":Ljava/lang/String;
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    add-float/2addr v2, p4

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected drawZeroLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 222
    .local v0, "clipRestoreCount":I
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLineClippingRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 223
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLineClippingRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 224
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 227
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v3, v5, v5}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 229
    .local v1, "pos":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->getZeroLineWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mDrawZeroLinePath:Landroid/graphics/Path;

    .line 233
    .local v2, "zeroLinePath":Landroid/graphics/Path;
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mZeroLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 241
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 242
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 170
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/AxisBase;->getGridLineWidth()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 171
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridClippingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getTransformedPositions()[F
    .locals 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGetTransformedPositionsBuffer:[F

    array-length v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_0

    .line 200
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGetTransformedPositionsBuffer:[F

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGetTransformedPositionsBuffer:[F

    .line 204
    .local v1, "positions":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 206
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 204
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 210
    return-object v1
.end method

.method protected linePath(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2
    .param p1, "p"    # Landroid/graphics/Path;
    .param p2, "i"    # I
    .param p3, "positions"    # [F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v0

    add-int/lit8 v1, p2, 0x1

    aget v1, p3, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v0

    add-int/lit8 v1, p2, 0x1

    aget v1, p3, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    return-object p1
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getTransformedPositions()[F

    move-result-object v2

    .line 55
    .local v2, "positions":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getXOffset()F

    move-result v4

    .line 60
    .local v4, "xoffset":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    const-string v7, "A"

    invoke-static {v6, v7}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v7

    add-float v5, v6, v7

    .line 62
    .local v5, "yoffset":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    .line 63
    .local v0, "dependency":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v1

    .line 65
    .local v1, "labelPosition":Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    const/4 v3, 0x0

    .line 67
    .local v3, "xPos":F
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v6, :cond_3

    .line 69
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v1, v6, :cond_2

    .line 70
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v6

    sub-float v3, v6, v4

    .line 88
    :goto_1
    invoke-virtual {p0, p1, v3, v2, v5}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->drawYLabels(Landroid/graphics/Canvas;F[FF)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v6

    add-float v3, v6, v4

    goto :goto_1

    .line 79
    :cond_3
    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v1, v6, :cond_4

    .line 80
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 81
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v6

    add-float v3, v6, v4

    goto :goto_1

    .line 83
    :cond_4
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 84
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v6

    sub-float v3, v6, v4

    goto :goto_1
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 102
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 105
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public renderGridLines(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 133
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isDrawGridLinesEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 139
    .local v0, "clipRestoreCount":I
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getGridClippingRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 141
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getTransformedPositions()[F

    move-result-object v3

    .line 143
    .local v3, "positions":[F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->getGridColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->getGridLineWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->getGridDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 147
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderGridLinesPath:Landroid/graphics/Path;

    .line 148
    .local v1, "gridLinePath":Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 151
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 154
    invoke-virtual {p0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->linePath(Landroid/graphics/Path;I[F)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 151
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 161
    .end local v0    # "clipRestoreCount":I
    .end local v1    # "gridLinePath":Landroid/graphics/Path;
    .end local v2    # "i":I
    .end local v3    # "positions":[F
    :cond_3
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isDrawZeroLineEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->drawZeroLine(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v6

    .line 257
    .local v6, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 344
    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderLimitLinesBuffer:[F

    .line 261
    .local v8, "pts":[F
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 262
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 263
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mRenderLimitLines:Landroid/graphics/Path;

    .line 264
    .local v5, "limitLinePath":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 266
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 268
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LimitLine;

    .line 270
    .local v2, "l":Lcom/github/mikephil/charting/components/LimitLine;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 266
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 274
    .local v0, "clipRestoreCount":I
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 275
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    const/4 v12, 0x0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v13

    neg-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 276
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 278
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 279
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 283
    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v12

    aput v12, v8, v11

    .line 285
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v11, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 287
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 288
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 290
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 291
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 294
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 299
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 301
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 303
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 306
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v11, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v4, v11

    .line 307
    .local v4, "labelLineHeight":F
    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v11

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getXOffset()F

    move-result v12

    add-float v9, v11, v12

    .line 308
    .local v9, "xOffset":F
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v11

    add-float/2addr v11, v4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getYOffset()F

    move-result v12

    add-float v10, v11, v12

    .line 310
    .local v10, "yOffset":F
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v7

    .line 312
    .local v7, "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_4

    .line 314
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 315
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 316
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v11

    sub-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    sub-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 315
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    .end local v4    # "labelLineHeight":F
    .end local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .end local v9    # "xOffset":F
    .end local v10    # "yOffset":F
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 319
    .restart local v4    # "labelLineHeight":F
    .restart local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .restart local v9    # "xOffset":F
    .restart local v10    # "yOffset":F
    :cond_4
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_5

    .line 321
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 322
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 323
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v11

    sub-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    add-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 322
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 326
    :cond_5
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_6

    .line 328
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 329
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 330
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v11

    add-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    sub-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 329
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 335
    :cond_6
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 337
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v11

    add-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    add-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 336
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
