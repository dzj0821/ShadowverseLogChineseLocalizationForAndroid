.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckAnalyze()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 318
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v10, "deckSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "deck"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    const-string v3, "myDeckType"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v16, "deck"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v8, "_prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_5

    .line 326
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "to"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 327
    .local v14, "labelTo":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "from"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 329
    .local v12, "labelFrom":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-lez v2, :cond_2

    .line 330
    const-string v2, "from"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v3

    const-string v16, "from"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "to"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-lez v2, :cond_4

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "to"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-gez v2, :cond_3

    .line 337
    const-string v2, "to"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v3

    const-string v16, "to"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v12    # "labelFrom":J
    .end local v14    # "labelTo":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$900(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v8, v3, v10}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcWinPer(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    .line 353
    .local v4, "data0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Float;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$900(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v8, v3, v10}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcVsLeader(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v9

    .line 354
    .local v9, "data3":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->makeTableLayout(Ljava/util/List;Z)Landroid/widget/TableLayout;

    move-result-object v5

    .line 357
    .local v5, "table3":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$900(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v8, v0, v10}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcVsDeckType(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->makeTableLayout(Ljava/util/List;Z)Landroid/widget/TableLayout;

    move-result-object v6

    .line 360
    .local v6, "table4":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$900(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v8, v0, v10}, Lcom/shadowlog/shadowverselog/function/WinningCalculation;->doCalcOrder(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->makeTableLayout2(Ljava/util/HashMap;)Landroid/widget/TableLayout;

    move-result-object v7

    .line 363
    .local v7, "table5":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;Ljava/util/HashMap;Landroid/widget/TableLayout;Landroid/widget/TableLayout;Landroid/widget/TableLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 429
    return-void

    .line 320
    .end local v4    # "data0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Float;>;>;"
    .end local v5    # "table3":Landroid/widget/TableLayout;
    .end local v6    # "table4":Landroid/widget/TableLayout;
    .end local v7    # "table5":Landroid/widget/TableLayout;
    .end local v8    # "_prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "data3":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;>;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "mydeck"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, "Deck_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v16, "mydeck"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 332
    .restart local v8    # "_prieodSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v12    # "labelFrom":J
    .restart local v14    # "labelTo":J
    :cond_2
    :try_start_1
    const-string v2, "from"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 344
    .end local v12    # "labelFrom":J
    .end local v14    # "labelTo":J
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v8

    goto/16 :goto_2

    .line 339
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "labelFrom":J
    .restart local v14    # "labelTo":J
    :cond_3
    :try_start_2
    const-string v2, "to"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 342
    :cond_4
    const-string v2, "to"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 346
    .end local v12    # "labelFrom":J
    .end local v14    # "labelTo":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v8

    goto/16 :goto_2
.end method
