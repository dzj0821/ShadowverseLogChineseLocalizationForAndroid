.class Lcom/shadowlog/shadowverselog/MyPageActivity$4;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity;->onStartOverRay()V
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
    .line 299
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$4;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$4;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/MyPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$4;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    sget v2, Lcom/shadowlog/shadowverselog/MyPageActivity;->ACTION_MANAGE_OVERLAY_PERMISSION_REQUEST_CODE:I

    invoke-virtual {v1, v0, v2}, Lcom/shadowlog/shadowverselog/MyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    return-void
.end method
