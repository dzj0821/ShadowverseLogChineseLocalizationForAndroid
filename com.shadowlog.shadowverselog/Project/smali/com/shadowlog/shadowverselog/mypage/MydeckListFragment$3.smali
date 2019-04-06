.class Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$3;
.super Ljava/lang/Object;
.source "MydeckListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->onAllRefresh()V

    .line 225
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 226
    return-void
.end method
