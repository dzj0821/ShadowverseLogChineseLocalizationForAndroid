.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckList()V
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
    .line 198
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 201
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v8}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 202
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/shadowlog/shadowverselog/function/MakeDeckTypeList;->putBase(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 203
    .local v0, "deckDefine":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/shadowlog/shadowverselog/function/MakeDeckTypeList;->putMyDeck(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v5

    .line 206
    .local v5, "mydeckDefine":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 207
    .local v4, "mdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 208
    const-string v8, "select aid,name,myLeader from SV_MYDECK where delete_flag=0 order by update_date desc"

    invoke-virtual {v4, v8}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 209
    .local v2, "deckList2":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 210
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 211
    .local v3, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v7, "rs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "name"

    const-string v10, "name"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v9, "mydeck"

    const-string v10, "aid"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v9, "leader"

    const-string v10, "myLeader"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v9}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v3    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "rs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 220
    .local v6, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 221
    const-string v8, "select myLeader,myDeckType from SV_RECORD where delete_flag=0 and format in (1,2,3,4,5) group by myDeckType order by update_date desc"

    invoke-virtual {v6, v8}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 222
    .local v1, "deckList1":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 224
    .restart local v3    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 225
    .restart local v7    # "rs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "name"

    const-string v8, "myDeckType"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v8, "deck"

    const-string v10, "myDeckType"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v8, "leader"

    const-string v10, "myLeader"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v8}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    .end local v3    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "rs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    new-instance v9, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    iget-object v10, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v10}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f090022

    iget-object v12, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v12}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v13}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V

    invoke-static {v8, v9}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$302(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;)Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    .line 235
    iget-object v8, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    new-instance v9, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3$1;

    invoke-direct {v9, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method
