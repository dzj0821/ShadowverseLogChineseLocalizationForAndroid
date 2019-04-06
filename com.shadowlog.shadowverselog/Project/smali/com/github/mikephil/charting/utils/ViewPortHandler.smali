.class public Lcom/github/mikephil/charting/utils/ViewPortHandler;
.super Ljava/lang/Object;
.source "ViewPortHandler.java"


# instance fields
.field protected mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

.field protected mChartHeight:F

.field protected mChartWidth:F

.field protected mContentRect:Landroid/graphics/RectF;

.field protected final mMatrixTouch:Landroid/graphics/Matrix;

.field private mMaxScaleX:F

.field private mMaxScaleY:F

.field private mMinScaleX:F

.field private mMinScaleY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransOffsetX:F

.field private mTransOffsetY:F

.field private mTransX:F

.field private mTransY:F

.field protected final matrixBuffer:[F

.field protected valsBufferForFitScreen:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    .line 26
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    .line 32
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 37
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    .line 42
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 47
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 52
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    .line 57
    iput v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    .line 62
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    .line 67
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    .line 72
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    .line 77
    iput v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    .line 307
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->valsBufferForFitScreen:[F

    .line 373
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

    .line 402
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    .line 84
    return-void
.end method


# virtual methods
.method public canZoomInMoreX()Z
    .locals 2

    .prologue
    .line 729
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomInMoreY()Z
    .locals 2

    .prologue
    .line 747
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOutMoreX()Z
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOutMoreY()Z
    .locals 2

    .prologue
    .line 738
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public centerViewPort([FLandroid/view/View;)V
    .locals 6
    .param p1, "transformedPts"    # [F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 387
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mCenterViewPortMatrixBuffer:Landroid/graphics/Matrix;

    .line 388
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 389
    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 391
    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v4

    sub-float v1, v3, v4

    .line 392
    .local v1, "x":F
    aget v3, p1, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v4

    sub-float v2, v3, v4

    .line 394
    .local v2, "y":F
    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 396
    invoke-virtual {p0, v0, p2, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 397
    return-void
.end method

.method public contentBottom()F
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public contentHeight()F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public contentLeft()F
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public contentRight()F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public contentTop()F
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public contentWidth()F
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public fitScreen()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 315
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 316
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->fitScreen(Landroid/graphics/Matrix;)V

    .line 317
    return-object v0
.end method

.method public fitScreen(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 325
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 326
    iput v3, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 328
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 330
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->valsBufferForFitScreen:[F

    .line 331
    .local v1, "vals":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 332
    aput v4, v1, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 338
    const/4 v2, 0x2

    aput v4, v1, v2

    .line 339
    const/4 v2, 0x5

    aput v4, v1, v2

    .line 340
    const/4 v2, 0x0

    aput v3, v1, v2

    .line 341
    const/4 v2, 0x4

    aput v3, v1, v2

    .line 343
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 344
    return-void
.end method

.method public getChartHeight()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    return v0
.end method

.method public getChartWidth()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    return v0
.end method

.method public getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    return-object v0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getMatrixTouch()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxScaleX()F
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    return v0
.end method

.method public getMaxScaleY()F
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    return v0
.end method

.method public getMinScaleX()F
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    return v0
.end method

.method public getMinScaleY()F
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    return v0
.end method

.method public getSmallestContentExtension()F
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getTransX()F
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    return v0
.end method

.method public getTransY()F
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    return v0
.end method

.method public hasChartDimens()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoDragOffset()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 711
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOut()Z
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOutX()Z
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyZoomedOutY()Z
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBounds(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsBottom(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 604
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 605
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsLeft(F)Z
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 591
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsRight(F)Z
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 595
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float p1, v0, v1

    .line 596
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsTop(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 600
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsX(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoundsY(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 11
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "content"    # Landroid/graphics/RectF;

    .prologue
    .line 431
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 433
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x2

    aget v2, v8, v9

    .line 434
    .local v2, "curTransX":F
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x0

    aget v0, v8, v9

    .line 436
    .local v0, "curScaleX":F
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x5

    aget v3, v8, v9

    .line 437
    .local v3, "curTransY":F
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x4

    aget v1, v8, v9

    .line 440
    .local v1, "curScaleY":F
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    .line 443
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, "width":F
    const/4 v4, 0x0

    .line 448
    .local v4, "height":F
    if-eqz p2, :cond_0

    .line 449
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 450
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 453
    :cond_0
    neg-float v8, v7

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    mul-float v5, v8, v9

    .line 454
    .local v5, "maxTransX":F
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    sub-float v8, v5, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    .line 456
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    mul-float v6, v4, v8

    .line 457
    .local v6, "maxTransY":F
    iget v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    add-float/2addr v8, v6

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    neg-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    .line 459
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x2

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransX:F

    aput v10, v8, v9

    .line 460
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x0

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    aput v10, v8, v9

    .line 462
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x5

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransY:F

    aput v10, v8, v9

    .line 463
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    const/4 v9, 0x4

    iget v10, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    aput v10, v8, v9

    .line 465
    iget-object v8, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->matrixBuffer:[F

    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 466
    return-void
.end method

.method public offsetBottom()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public offsetLeft()F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public offsetRight()F
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public offsetTop()F
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "newMatrix"    # Landroid/graphics/Matrix;
    .param p2, "chart"    # Landroid/view/View;
    .param p3, "invalidate"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 415
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 417
    if-eqz p3, :cond_0

    .line 418
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 421
    return-object p1
.end method

.method public restrainViewPort(FFFF)V
    .locals 3
    .param p1, "offsetLeft"    # F
    .param p2, "offsetTop"    # F
    .param p3, "offsetRight"    # F
    .param p4, "offsetBottom"    # F

    .prologue
    .line 115
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    sub-float/2addr v1, p3

    iget v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    sub-float/2addr v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    return-void
.end method

.method public setChartDimens(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v1

    .line 96
    .local v1, "offsetLeft":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v3

    .line 97
    .local v3, "offsetTop":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v2

    .line 98
    .local v2, "offsetRight":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v0

    .line 100
    .local v0, "offsetBottom":F
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    .line 101
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartWidth:F

    .line 103
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 104
    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 692
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetX:F

    .line 693
    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 702
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mTransOffsetY:F

    .line 703
    return-void
.end method

.method public setMaximumScaleX(F)V
    .locals 2
    .param p1, "xScale"    # F

    .prologue
    .line 490
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 491
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 493
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 495
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 496
    return-void
.end method

.method public setMaximumScaleY(F)V
    .locals 2
    .param p1, "yScale"    # F

    .prologue
    .line 540
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 541
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 543
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    .line 545
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 546
    return-void
.end method

.method public setMinMaxScaleX(FF)V
    .locals 2
    .param p1, "minScaleX"    # F
    .param p2, "maxScaleX"    # F

    .prologue
    .line 506
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 507
    const/high16 p1, 0x3f800000    # 1.0f

    .line 509
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 510
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 512
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 513
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    .line 515
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 516
    return-void
.end method

.method public setMinMaxScaleY(FF)V
    .locals 2
    .param p1, "minScaleY"    # F
    .param p2, "maxScaleY"    # F

    .prologue
    .line 550
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 551
    const/high16 p1, 0x3f800000    # 1.0f

    .line 553
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 554
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 556
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 557
    iput p2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    .line 559
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 560
    return-void
.end method

.method public setMinimumScaleX(F)V
    .locals 2
    .param p1, "xScale"    # F

    .prologue
    .line 475
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 476
    const/high16 p1, 0x3f800000    # 1.0f

    .line 478
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    .line 480
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 481
    return-void
.end method

.method public setMinimumScaleY(F)V
    .locals 2
    .param p1, "yScale"    # F

    .prologue
    .line 525
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 526
    const/high16 p1, 0x3f800000    # 1.0f

    .line 528
    :cond_0
    iput p1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    .line 530
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->limitTransAndScale(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 531
    return-void
.end method

.method public setZoom(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 277
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 278
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setZoom(FFLandroid/graphics/Matrix;)V

    .line 279
    return-object v0
.end method

.method public setZoom(FFFF)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 299
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 300
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 302
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 304
    return-object v0
.end method

.method public setZoom(FFLandroid/graphics/Matrix;)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 283
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 284
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 285
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 286
    return-void
.end method

.method public translate([F)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "transformedPts"    # [F

    .prologue
    .line 354
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->translate([FLandroid/graphics/Matrix;)V

    .line 356
    return-object v0
.end method

.method public translate([FLandroid/graphics/Matrix;)V
    .locals 4
    .param p1, "transformedPts"    # [F
    .param p2, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 366
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 367
    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 368
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v3

    sub-float v0, v2, v3

    .line 369
    .local v0, "x":F
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v3

    sub-float v1, v2, v3

    .line 370
    .local v1, "y":F
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 371
    return-void
.end method

.method public zoom(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 235
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFLandroid/graphics/Matrix;)V

    .line 237
    return-object v0
.end method

.method public zoom(FFFF)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 257
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, "save":Landroid/graphics/Matrix;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 259
    return-object v5
.end method

.method public zoom(FFFFLandroid/graphics/Matrix;)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 263
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 264
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 265
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 266
    return-void
.end method

.method public zoom(FFLandroid/graphics/Matrix;)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 241
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 242
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 243
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 244
    return-void
.end method

.method public zoomIn(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 198
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 199
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomIn(FFLandroid/graphics/Matrix;)V

    .line 200
    return-object v0
.end method

.method public zoomIn(FFLandroid/graphics/Matrix;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const v1, 0x3fb33333    # 1.4f

    .line 204
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 205
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 206
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 207
    return-void
.end method

.method public zoomOut(FF)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 215
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    .local v0, "save":Landroid/graphics/Matrix;
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomOut(FFLandroid/graphics/Matrix;)V

    .line 217
    return-object v0
.end method

.method public zoomOut(FFLandroid/graphics/Matrix;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "outputMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const v1, 0x3f333333    # 0.7f

    .line 221
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 222
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 223
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 224
    return-void
.end method
