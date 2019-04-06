.class Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$2;
.super Ljava/lang/Object;
.source "RecordListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 227
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 228
    return-void
.end method
