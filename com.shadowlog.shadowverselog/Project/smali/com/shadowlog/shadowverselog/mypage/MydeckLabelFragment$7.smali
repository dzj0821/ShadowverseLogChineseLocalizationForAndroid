.class Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$7;
.super Ljava/lang/Object;
.source "MydeckLabelFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onLabelDetele(I)V
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
    .line 277
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    iput p2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$7;->val$aid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    iget v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment$7;->val$aid:I

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;ILjava/lang/String;I)V

    .line 280
    return-void
.end method
