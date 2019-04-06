.class Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;
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

.field final synthetic val$dialogTextView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;ILandroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    iput p2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;->val$aid:I

    iput-object p3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;->val$dialogTextView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    iget v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;->val$aid:I

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$3;->val$dialogTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;ILjava/lang/String;I)V

    .line 254
    return-void
.end method
