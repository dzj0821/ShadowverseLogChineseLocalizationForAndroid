.class Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;
.super Ljava/lang/Object;
.source "RecordListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->updateListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

.field final synthetic val$listview:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->val$listview:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 100
    const-string v2, "select * from SV_RECORD where delete_flag=0 order by play_date desc"

    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 104
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;

    invoke-direct {v3, p0, v1}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$1;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method
