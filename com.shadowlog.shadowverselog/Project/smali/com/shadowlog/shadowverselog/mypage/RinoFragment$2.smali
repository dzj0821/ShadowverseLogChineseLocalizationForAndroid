.class Lcom/shadowlog/shadowverselog/mypage/RinoFragment$2;
.super Ljava/lang/Object;
.source "RinoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/RinoFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/RinoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/RinoFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/RinoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment$2;->this$0:Lcom/shadowlog/shadowverselog/mypage/RinoFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->access$100(Lcom/shadowlog/shadowverselog/mypage/RinoFragment;)V

    .line 75
    return-void
.end method
