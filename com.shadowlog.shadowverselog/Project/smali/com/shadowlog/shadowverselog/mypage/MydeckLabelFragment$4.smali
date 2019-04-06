.class Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$4;
.super Ljava/lang/Object;
.source "MydeckLabelFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onEditLabel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

.field final synthetic val$aid:I


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    iput p2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$4;->val$aid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    iget v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$4;->val$aid:I

    invoke-static {v0, v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;I)V

    .line 261
    return-void
.end method
