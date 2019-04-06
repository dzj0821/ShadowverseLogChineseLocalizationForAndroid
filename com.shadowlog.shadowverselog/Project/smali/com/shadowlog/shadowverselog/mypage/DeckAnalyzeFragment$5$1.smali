.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

.field final synthetic val$data0:Ljava/util/HashMap;

.field final synthetic val$table3:Landroid/widget/TableLayout;

.field final synthetic val$table4:Landroid/widget/TableLayout;

.field final synthetic val$table5:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;Ljava/util/HashMap;Landroid/widget/TableLayout;Landroid/widget/TableLayout;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$table3:Landroid/widget/TableLayout;

    iput-object p4, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$table4:Landroid/widget/TableLayout;

    iput-object p5, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$table5:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 366
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 367
    .local v8, "listView":Landroid/widget/ListView;
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "mydeck"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "deck"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0, v8}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->setMyDeckID(IILandroid/view/ViewGroup;)V

    .line 369
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "myWinPer"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "allSum"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u56de"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "winSum"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u56de"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TableLayout;

    .line 374
    .local v9, "tbLay3":Landroid/widget/TableLayout;
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TableLayout;

    .line 375
    .local v10, "tbLay4":Landroid/widget/TableLayout;
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TableLayout;

    .line 377
    .local v11, "tbLay5":Landroid/widget/TableLayout;
    invoke-virtual {v9}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 378
    invoke-virtual {v10}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 379
    invoke-virtual {v11}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 382
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "\u30e9\u30a4\u30f3\u30c1\u30e3\u30fc\u30c8"

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    const-string v5, "max"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    const-string v12, "min"

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/lib/DrawLineChart;-><init>(Landroid/view/View;Ljava/util/List;Ljava/lang/String;FF)V

    .line 383
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$table3:Landroid/widget/TableLayout;

    invoke-virtual {v9, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$table4:Landroid/widget/TableLayout;

    invoke-virtual {v10, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$table5:Landroid/widget/TableLayout;

    invoke-virtual {v10, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->val$data0:Ljava/util/HashMap;

    const-string v1, "allSum"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$1000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "mydeck"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_2
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 416
    const-string v7, ""

    .line 417
    .local v7, "label_prioed":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "from"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$1200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \uff5e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v2, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "to"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$1200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 420
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    .end local v7    # "label_prioed":Ljava/lang/String;
    :goto_3
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 413
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0701a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$102(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_2

    .line 423
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method
