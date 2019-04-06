.class Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;
.super Ljava/lang/Object;
.source "MydeckListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->updateListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

.field final synthetic val$listview:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->val$listview:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 106
    new-instance v1, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "rdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 108
    const-string v4, "select * from SV_MYDECK where delete_flag=0 order by update_date desc"

    invoke-virtual {v1, v4}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 111
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 113
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 114
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;

    invoke-direct {v2}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;-><init>()V

    .line 115
    .local v2, "rs":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    invoke-virtual {v2, v0}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->setHash(Ljava/util/Map;)V

    .line 117
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-static {v5}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "rs":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    :cond_0
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;

    invoke-direct {v5, p0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$2;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method
