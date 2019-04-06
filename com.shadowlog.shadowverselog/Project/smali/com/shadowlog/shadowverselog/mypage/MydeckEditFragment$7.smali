.class Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;
.super Ljava/lang/Object;
.source "MydeckEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->dataRemove()V
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
    .line 473
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 476
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$202(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;Z)Z

    .line 477
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;-><init>()V

    .line 478
    .local v1, "resMst":Lcom/shadowlog/shadowverselog/struct/MydeckStruct;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->aid:Ljava/lang/Integer;

    .line 479
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->User_id:Ljava/lang/Integer;

    .line 480
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->delete_flag:Ljava/lang/Integer;

    .line 482
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$400(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 484
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 485
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/MydeckStruct;->putHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 489
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-virtual {v2, v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/MydeckStruct;)V

    goto :goto_0
.end method
