.class public Lcom/shadowlog/shadowverselog/lib/DrawLineChart;
.super Ljava/lang/Object;
.source "DrawLineChart.java"


# instance fields
.field private mChart:Lcom/github/mikephil/charting/charts/LineChart;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "max"    # F
    .param p5, "min"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "FF)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    check-cast p1, Lcom/github/mikephil/charting/charts/LineChart;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 30
    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->getEntryList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 33
    .local v0, "vlist":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-direct {p0, p4, p5}, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->oninitLineChart(FF)V

    .line 34
    invoke-direct {p0, v0, p3}, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->onDrawLineChart(Ljava/util/List;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private getEntryList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "elist":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 110
    new-instance v3, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v4, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-object v0
.end method

.method private onDrawLineChart(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "yVals1":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/16 v7, 0x75

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 133
    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-direct {v1, p1, p2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 135
    .local v1, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 136
    const-string v2, "#CC4183D7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 137
    const-string v2, "#4183D7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 138
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 139
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 140
    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 141
    const/16 v2, 0x22

    const/16 v3, 0xa7

    const/16 v4, 0xf0

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 142
    const/16 v2, 0xf4

    invoke-static {v2, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 143
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 144
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 147
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    new-array v2, v6, [Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 148
    .local v0, "data":Lcom/github/mikephil/charting/data/LineData;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 152
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 153
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 154
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 159
    .end local v0    # "data":Lcom/github/mikephil/charting/data/LineData;
    .end local v1    # "set":Lcom/github/mikephil/charting/data/LineDataSet;
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    goto :goto_0
.end method

.method private oninitLineChart(FF)V
    .locals 8
    .param p1, "max"    # F
    .param p2, "min"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 47
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 48
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 49
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 50
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 51
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setHighlightPerDragEnabled(Z)V

    .line 52
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 55
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 58
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 59
    .local v0, "l":Lcom/github/mikephil/charting/components/Legend;
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 73
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 74
    .local v3, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 82
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 84
    .local v1, "leftAxis":Lcom/github/mikephil/charting/components/YAxis;
    const-string v4, "#0077C0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 85
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 86
    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 87
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 88
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 91
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 92
    .local v2, "rightAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 101
    return-void
.end method
