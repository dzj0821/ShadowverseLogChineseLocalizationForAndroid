.class Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$3;
.super Ljava/lang/Object;
.source "Record2ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 220
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 221
    return-void
.end method
