.class Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;
.super Ljava/lang/Object;
.source "MyAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->updateListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v4, v0, v1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcWinPer(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    .line 123
    .local v5, "data0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Float;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v4, v0, v1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcMyLeader(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v12

    .line 124
    .local v12, "data1":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    const v4, 0x7f090065

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v12, v4, v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->makeTableLayout(Ljava/util/List;IZ)Landroid/widget/TableLayout;

    move-result-object v7

    .line 127
    .local v7, "table1":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcMyDeckType(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const v17, 0x7f090065

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->makeTableLayout(Ljava/util/List;IZ)Landroid/widget/TableLayout;

    move-result-object v8

    .line 130
    .local v8, "table2":Landroid/widget/TableLayout;
    const/4 v15, 0x0

    .line 131
    .local v15, "pia_flag1":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v6, "pieList1":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 133
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    new-instance v17, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v0, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v0, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/16 v17, 0x0

    cmpl-float v3, v3, v17

    if-lez v3, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    .line 136
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    :cond_1
    if-nez v15, :cond_2

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 139
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v4, v0, v1}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcVsLeader(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v13

    .line 140
    .local v13, "data3":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    const v4, 0x7f090063

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v13, v4, v0}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->makeTableLayout(Ljava/util/List;IZ)Landroid/widget/TableLayout;

    move-result-object v10

    .line 143
    .local v10, "table3":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcVsDeckType(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const v17, 0x7f090063

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->makeTableLayout(Ljava/util/List;IZ)Landroid/widget/TableLayout;

    move-result-object v11

    .line 146
    .local v11, "table4":Landroid/widget/TableLayout;
    const/16 v16, 0x0

    .line 147
    .local v16, "pia_flag2":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v9, "pieList2":Ljava/util/List;, "Ljava/util/List<Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 149
    .restart local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    new-instance v17, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v0, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v0, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    move-object/from16 v19, v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/16 v17, 0x0

    cmpl-float v3, v3, v17

    if-lez v3, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    .line 152
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;"
    :cond_4
    if-nez v16, :cond_5

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 155
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    new-instance v3, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MyAnalyzeFragment$1;Ljava/util/HashMap;Ljava/util/List;Landroid/widget/TableLayout;Landroid/widget/TableLayout;Ljava/util/List;Landroid/widget/TableLayout;Landroid/widget/TableLayout;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method
