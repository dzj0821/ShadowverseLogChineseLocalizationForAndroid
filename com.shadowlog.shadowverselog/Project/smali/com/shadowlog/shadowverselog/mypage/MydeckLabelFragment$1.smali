.class Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$1;
.super Ljava/lang/Object;
.source "MydeckLabelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onEditLabel(I)V

    .line 146
    return-void
.end method
