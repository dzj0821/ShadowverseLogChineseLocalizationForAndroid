.class public Lcom/shadowlog/shadowverselog/function/WinningCalculation;
.super Ljava/lang/Object;
.source "WinningCalculation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCalcMyDeckType(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "formatSet"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 64
    .local v8, "sum":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v4, "decktype":Ljava/util/HashMap;
    invoke-static/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/function/MakeDeckTypeList;->putBase(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 69
    new-instance v7, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 70
    .local v7, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 71
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "select myLeader,myDeckType,result,ord,count(*) from SV_RECORD where delete_flag=0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makePriodString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeFormatString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeCustomString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " group by myDeckType,result,ord"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 72
    .local v9, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 73
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 74
    .local v5, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "myDeckType"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 75
    .local v6, "key":I
    const-string v10, "count(*)"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, "cnt":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-direct {v11}, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;-><init>()V

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    const-string v11, "myLeader"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    const-string v11, "myDeckType"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->DeckType:Ljava/lang/Integer;

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->DeckType:Ljava/lang/Integer;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    .line 83
    const-string v10, "ord"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    .line 88
    :cond_1
    :goto_1
    const-string v10, "result"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    .line 90
    const-string v10, "ord"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_f:Ljava/lang/Integer;

    .line 96
    :cond_2
    :goto_2
    add-int/2addr v8, v2

    .line 97
    goto/16 :goto_0

    .line 85
    :cond_3
    const-string v10, "ord"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    goto :goto_1

    .line 92
    :cond_4
    const-string v10, "ord"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_a:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_a:Ljava/lang/Integer;

    goto :goto_2

    .line 99
    .end local v2    # "cnt":I
    .end local v5    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":I
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 100
    .local v6, "key":Ljava/lang/Integer;
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v10, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_7

    .line 101
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    int-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    .line 102
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per:Ljava/lang/Float;

    .line 104
    :cond_7
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v10, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_8

    .line 105
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per_f:Ljava/lang/Float;

    .line 107
    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v10, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_6

    .line 108
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_a:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per_a:Ljava/lang/Float;

    goto/16 :goto_3

    .line 112
    .end local v6    # "key":Ljava/lang/Integer;
    :cond_9
    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doSort(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v10

    return-object v10
.end method

.method public static doCalcMyLeader(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "formatSet"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 25
    .local v7, "sum":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    sget-object v10, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 27
    .local v3, "entry":Ljava/util/Map$Entry;
    new-instance v8, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-direct {v8}, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;-><init>()V

    .line 28
    .local v8, "tmp":Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    .line 29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iput-object v10, v8, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    .line 30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "tmp":Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;
    :cond_0
    new-instance v6, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    .local v6, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 35
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "select myLeader,result,count(*) from SV_RECORD where delete_flag=0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makePriodString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeFormatString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeCustomString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " group by myLeader,result order by update_date desc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 36
    .local v9, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 37
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 38
    .local v4, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "myLeader"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v11, "count(*)"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    .line 39
    const-string v10, "result"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 40
    const-string v10, "myLeader"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v11, "count(*)"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    .line 42
    :cond_1
    const-string v10, "count(*)"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v7, v10

    .line 43
    goto/16 :goto_1

    .line 45
    .end local v4    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-lez v7, :cond_4

    .line 46
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 47
    .local v5, "key":Ljava/lang/Integer;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v10, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_3

    .line 48
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per:Ljava/lang/Float;

    .line 50
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    goto :goto_2

    .line 54
    .end local v5    # "key":Ljava/lang/Integer;
    :cond_4
    invoke-static {v2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doSort(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v10

    return-object v10
.end method

.method public static doCalcOrder(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "formatSet"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-direct {v7, p0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 313
    .local v7, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "select result,ord,count(*) from SV_RECORD where delete_flag=0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makePriodString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeFormatString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeCustomString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " group by result,ord"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 315
    .local v9, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, "ord1_win":I
    const/4 v2, 0x0

    .line 319
    .local v2, "ord1_sum":I
    const/4 v6, 0x0

    .line 320
    .local v6, "ord2_win":I
    const/4 v5, 0x0

    .line 322
    .local v5, "ord2_sum":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 323
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "ord"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "1"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 325
    const-string v10, "count(*)"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v2, v10

    .line 326
    const-string v10, "result"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "1"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 328
    const-string v10, "count(*)"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v3, v10

    goto :goto_0

    .line 330
    :cond_1
    const-string v10, "ord"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "2"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 332
    const-string v10, "count(*)"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v5, v10

    .line 333
    const-string v10, "result"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "1"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 335
    const-string v10, "count(*)"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v6, v10

    goto/16 :goto_0

    .line 340
    .end local v0    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "ord1_per":F
    const/4 v4, 0x0

    .line 341
    .local v4, "ord2_per":F
    if-lez v2, :cond_3

    int-to-float v10, v3

    int-to-float v11, v2

    div-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float v1, v10, v11

    .line 342
    :cond_3
    if-lez v5, :cond_4

    int-to-float v10, v6

    int-to-float v11, v5

    div-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float v4, v10, v11

    .line 344
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v8, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "ord1_win"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v10, "ord1_sum"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v10, "ord1_per"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v10, "ord2_win"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v10, "ord2_sum"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v10, "ord2_per"

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-object v8
.end method

.method public static doCalcVsDeckType(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "formatSet"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 162
    .local v9, "sum":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v4, "decktype":Ljava/util/HashMap;
    invoke-static/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/function/MakeDeckTypeList;->putBase(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 167
    new-instance v7, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 168
    .local v7, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 169
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "select vsLeader,vsDeckType,result,ord,count(*) from SV_RECORD where delete_flag=0 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makePriodString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeFormatString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeCustomString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " group by vsDeckType,result,ord"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, "sql":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 171
    .local v10, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 172
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 173
    .local v5, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "vsDeckType"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 174
    .local v6, "key":I
    const-string v11, "count(*)"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, "cnt":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_0

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-direct {v12}, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;-><init>()V

    invoke-virtual {v3, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    const-string v12, "vsLeader"

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    const-string v12, "vsDeckType"

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->DeckType:Ljava/lang/Integer;

    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vs "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->DeckType:Ljava/lang/Integer;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    .line 181
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    .line 182
    const-string v11, "ord"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 183
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    .line 187
    :cond_1
    :goto_1
    const-string v11, "result"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 188
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    .line 189
    const-string v11, "ord"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 190
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_f:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_f:Ljava/lang/Integer;

    .line 195
    :cond_2
    :goto_2
    add-int/2addr v9, v2

    .line 196
    goto/16 :goto_0

    .line 184
    :cond_3
    const-string v11, "ord"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    goto :goto_1

    .line 191
    :cond_4
    const-string v11, "ord"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_a:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_a:Ljava/lang/Integer;

    goto :goto_2

    .line 198
    .end local v2    # "cnt":I
    .end local v5    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":I
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 199
    .local v6, "key":Ljava/lang/Integer;
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_7

    .line 200
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v14, v12

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v12, v14

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    .line 201
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v14, v12

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v12, v14

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per:Ljava/lang/Float;

    .line 203
    :cond_7
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_8

    .line 204
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_f:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v14, v12

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v12, v14

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per_f:Ljava/lang/Float;

    .line 206
    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_6

    .line 207
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_a:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v14, v12

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v12, v12, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v12, v14

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iput-object v12, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per_a:Ljava/lang/Float;

    goto/16 :goto_3

    .line 211
    .end local v6    # "key":Ljava/lang/Integer;
    :cond_9
    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doSort(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v11

    return-object v11
.end method

.method public static doCalcVsLeader(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "formatSet"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 123
    .local v7, "sum":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    sget-object v10, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 125
    .local v3, "entry":Ljava/util/Map$Entry;
    new-instance v8, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-direct {v8}, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;-><init>()V

    .line 126
    .local v8, "tmp":Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vs "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    .line 127
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iput-object v10, v8, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    .line 128
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "tmp":Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;
    :cond_0
    new-instance v6, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 132
    .local v6, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "select vsLeader,result,count(*) from SV_RECORD where delete_flag=0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makePriodString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeFormatString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeCustomString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " group by vsLeader,result order by update_date desc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 134
    .local v9, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 135
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 136
    .local v4, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "vsLeader"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v11, "count(*)"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    .line 137
    const-string v10, "result"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 138
    const-string v10, "vsLeader"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v11, "count(*)"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    .line 140
    :cond_1
    const-string v10, "count(*)"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v7, v10

    .line 141
    goto/16 :goto_1

    .line 143
    .end local v4    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-lez v7, :cond_4

    .line 144
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 145
    .local v5, "key":Ljava/lang/Integer;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v10, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_3

    .line 146
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per:Ljava/lang/Float;

    .line 148
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v11, v11, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v14, v11

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v11, v14

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v10, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    goto :goto_2

    .line 152
    .end local v5    # "key":Ljava/lang/Integer;
    :cond_4
    invoke-static {v2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doSort(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v10

    return-object v10
.end method

.method public static doCalcWinPer(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "formatSet"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0xa

    .line 221
    .local v7, "limit":I
    const/4 v2, 0x0

    .local v2, "allSum":I
    const/16 v19, 0x0

    .line 222
    .local v19, "winSum":I
    const/4 v10, 0x0

    .line 223
    .local v10, "myWinPer":F
    const/4 v3, 0x0

    .local v3, "graphMax":F
    const/4 v4, 0x0

    .line 224
    .local v4, "graphMin":F
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v18, "winPerAry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v14, "selwinPerAry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v12, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 228
    .local v12, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v12}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 229
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "select result from SV_RECORD where delete_flag=0 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makePriodString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeFormatString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p3 .. p3}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->makeCustomString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " order by play_date asc"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 230
    .local v15, "sql":Ljava/lang/String;
    invoke-virtual {v12, v15}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 231
    .local v16, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v12}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 232
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 233
    .local v6, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 234
    const-string v20, "result"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v22, "1"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 235
    add-int/lit8 v19, v19, 0x1

    .line 238
    :cond_0
    if-lez v2, :cond_1

    .line 239
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v2

    move/from16 v22, v0

    div-float v20, v20, v22

    const/high16 v22, 0x447a0000    # 1000.0f

    mul-float v20, v20, v22

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v22, 0x41200000    # 10.0f

    div-float v20, v20, v22

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_1
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v6    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move v5, v7

    .local v5, "i":I
    :goto_1
    if-lez v5, :cond_4

    .line 246
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    mul-int/lit8 v21, v5, 0x1

    sub-int v11, v20, v21

    .line 247
    .local v11, "p":I
    if-ltz v11, :cond_3

    .line 248
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 249
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    sub-int v20, v20, v5

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 254
    .end local v11    # "p":I
    :cond_4
    if-lez v2, :cond_5

    .line 255
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v2

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x447a0000    # 1000.0f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x41200000    # 10.0f

    div-float v10, v20, v21

    .line 258
    :cond_5
    const/4 v8, 0x0

    .local v8, "maxPer":F
    const/high16 v9, -0x40800000    # -1.0f

    .line 259
    .local v9, "minPer":F
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_9

    .line 260
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 261
    .local v17, "v":F
    cmpl-float v20, v17, v8

    if-lez v20, :cond_6

    .line 262
    move/from16 v8, v17

    .line 264
    :cond_6
    cmpg-float v20, v17, v9

    if-ltz v20, :cond_7

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v9, v20

    if-nez v20, :cond_8

    .line 265
    :cond_7
    move/from16 v9, v17

    .line 259
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 268
    .end local v17    # "v":F
    :cond_9
    const/high16 v20, 0x42c80000    # 100.0f

    cmpl-float v20, v8, v20

    if-lez v20, :cond_a

    const/high16 v8, 0x42c80000    # 100.0f

    .line 269
    :cond_a
    const/16 v20, 0x0

    cmpg-float v20, v9, v20

    if-gez v20, :cond_b

    const/4 v9, 0x0

    .line 271
    :cond_b
    const/high16 v20, 0x40a00000    # 5.0f

    add-float v20, v20, v8

    add-float v3, v3, v20

    .line 272
    const/high16 v20, 0x40a00000    # 5.0f

    sub-float v20, v9, v20

    add-float v4, v4, v20

    .line 274
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v13, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Float;>;>;"
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v20, "allSum"

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v20, "allSum"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    int-to-float v0, v2

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v20, "winSum"

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v20, "winSum"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v20, "myWinPer"

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v20, "myWinPer"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v20, "max"

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v20, "max"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v20, "min"

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v20, "min"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    return-object v13
.end method

.method public static doSort(Ljava/util/HashMap;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 294
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;>;"
    new-instance v1, Lcom/shadowlog/shadowverselog/function/WinningCalculation$1;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 303
    return-object v0
.end method

.method private static makeCustomString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    .line 388
    .local v1, "res":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    .local v0, "e":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    goto :goto_0

    .line 393
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_0
    return-object v1
.end method

.method private static makeFormatString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "formatSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 369
    .local v3, "res":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 371
    .local v2, "max":I
    if-lez v2, :cond_2

    .line 372
    const-string v1, ""

    .line 373
    .local v1, "inStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and format in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    .end local v0    # "i":I
    .end local v1    # "inStr":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 379
    :cond_2
    const-string v3, " and format not in (8,9)"

    goto :goto_1
.end method

.method private static makePriodString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 360
    const-string v0, ""

    .line 361
    .local v0, "res":Ljava/lang/String;
    const-string v1, "from"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and play_date>="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "from"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_0
    const-string v1, "to"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and play_date<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "to"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_1
    return-object v0
.end method
