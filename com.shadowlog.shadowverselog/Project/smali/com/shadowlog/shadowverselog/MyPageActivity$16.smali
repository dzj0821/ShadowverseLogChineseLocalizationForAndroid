.class Lcom/shadowlog/shadowverselog/MyPageActivity$16;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z
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
    .line 848
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$16;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 851
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$16;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    const-class v2, Lcom/shadowlog/shadowverselog/LogoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 852
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$16;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 853
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$16;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->finish()V

    .line 854
    return-void
.end method
