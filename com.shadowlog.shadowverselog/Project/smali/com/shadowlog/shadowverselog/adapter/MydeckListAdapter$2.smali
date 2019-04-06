.class Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$2;
.super Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;
.source "MydeckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;
    .param p2, "num"    # I

    .prologue
    .line 111
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->access$000(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;)Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$2;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckListFragment;->onClickButtonCallback(II)V

    .line 115
    return-void
.end method
