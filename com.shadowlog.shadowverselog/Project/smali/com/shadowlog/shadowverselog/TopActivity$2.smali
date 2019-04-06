.class Lcom/shadowlog/shadowverselog/TopActivity$2;
.super Ljava/lang/Object;
.source "TopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/TopActivity;->initClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/TopActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/TopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/TopActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/TopActivity$2;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    const-string v1, "TopActivity"

    const-string v2, "SignUp Button Click!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/TopActivity$2;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/TopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/shadowlog/shadowverselog/SignupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/TopActivity$2;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/TopActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/TopActivity$2;->this$0:Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/TopActivity;->finish()V

    .line 59
    return-void
.end method
