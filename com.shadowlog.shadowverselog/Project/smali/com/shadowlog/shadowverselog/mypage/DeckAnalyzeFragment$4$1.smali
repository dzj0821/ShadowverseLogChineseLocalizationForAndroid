.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const v7, 0x7f070088

    .line 283
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->clear()V

    .line 284
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "mydeck"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 285
    const/4 v0, 0x1

    .line 286
    .local v0, "cnt":I
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " - - - - - - - - - - - - - - - "

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 287
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 288
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v3, v3, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "label"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 290
    goto :goto_0

    .line 291
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .end local v0    # "cnt":I
    :goto_1
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->notifyDataSetChanged()V

    .line 300
    return-void

    .line 294
    .restart local v0    # "cnt":I
    :cond_1
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 297
    .end local v0    # "cnt":I
    :cond_2
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;

    iget-object v2, v2, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
