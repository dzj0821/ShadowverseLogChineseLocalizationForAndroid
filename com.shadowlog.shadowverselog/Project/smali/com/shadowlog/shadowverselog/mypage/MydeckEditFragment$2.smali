.class Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$2;
.super Ljava/lang/Object;
.source "MydeckEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->dataRemove()V

    .line 171
    return-void
.end method
