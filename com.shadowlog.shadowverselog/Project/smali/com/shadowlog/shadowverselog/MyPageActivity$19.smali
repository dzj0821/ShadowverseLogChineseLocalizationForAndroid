.class Lcom/shadowlog/shadowverselog/MyPageActivity$19;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$19;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 999
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$19;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->finish()V

    .line 1000
    return-void
.end method
