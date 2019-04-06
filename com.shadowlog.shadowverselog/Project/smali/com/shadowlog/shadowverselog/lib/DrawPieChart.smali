.class public Lcom/shadowlog/shadowverselog/lib/DrawPieChart;
.super Ljava/lang/Object;
.source "DrawPieChart.java"


# instance fields
.field private mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field private order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    check-cast p1, Lcom/github/mikephil/charting/charts/PieChart;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 34
    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->getEntryList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, "vlist":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "colorOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;

    .line 38
    .local v1, "e":Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;
    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;->key:Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v1    # "e":Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;
    :cond_0
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->onInitPieChart()V

    .line 43
    invoke-direct {p0, v2, p3, v0}, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->onDrawPieChart(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 45
    return-void
.end method

.method private getEntryList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "elist":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->order:Ljava/util/List;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;

    .line 116
    .local v1, "iaf":Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;
    new-instance v3, Lcom/github/mikephil/charting/data/PieEntry;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;->val:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v1, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;->label:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->order:Ljava/util/List;

    iget-object v4, v1, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;->key:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v1    # "iaf":Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;
    :cond_0
    return-object v0
.end method

.method private onDrawPieChart(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "entry_list":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/PieEntry;>;"
    .local p3, "colorOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 126
    new-instance v2, Lcom/github/mikephil/charting/data/PieDataSet;

    invoke-direct {v2, p1, p2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 127
    .local v2, "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 128
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/PieDataSet;->setSelectionShift(F)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 150
    .local v3, "i":Ljava/lang/Integer;
    sget-object v4, Lcom/shadowlog/shadowverselog/lib/Defines;->leaderColor:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v3    # "i":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/PieDataSet;->setColors(Ljava/util/List;)V

    .line 155
    new-instance v1, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v1, v2}, Lcom/github/mikephil/charting/data/PieData;-><init>(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 156
    .local v1, "data":Lcom/github/mikephil/charting/data/PieData;
    new-instance v4, Lcom/github/mikephil/charting/formatter/PercentFormatter;

    invoke-direct {v4}, Lcom/github/mikephil/charting/formatter/PercentFormatter;-><init>()V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/PieData;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IValueFormatter;)V

    .line 157
    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/PieData;->setValueTextSize(F)V

    .line 158
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/data/PieData;->setValueTextColor(I)V

    .line 159
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 160
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 177
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    .line 181
    .end local v0    # "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "data":Lcom/github/mikephil/charting/data/PieData;
    .end local v2    # "dataSet":Lcom/github/mikephil/charting/data/PieDataSet;
    :goto_1
    return-void

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setVisibility(I)V

    goto :goto_1
.end method

.method private onInitPieChart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 53
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawEntryLabels(Z)V

    .line 55
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v5, v2, v5, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 58
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 64
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, 0x42740000    # 61.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 74
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 77
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setHighlightPerTapEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 91
    .local v0, "l":Lcom/github/mikephil/charting/components/Legend;
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 92
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 93
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    .line 94
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 95
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setXEntrySpace(F)V

    .line 96
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/Legend;->setYEntrySpace(F)V

    .line 97
    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    .line 98
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/Legend;->setYOffset(F)V

    .line 99
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/Legend;->setWordWrapEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelColor(I)V

    .line 104
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DrawPieChart;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTextSize(F)V

    .line 106
    return-void
.end method
