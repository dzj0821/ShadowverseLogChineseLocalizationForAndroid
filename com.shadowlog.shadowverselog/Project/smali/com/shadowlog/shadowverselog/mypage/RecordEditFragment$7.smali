.class Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;
.super Ljava/lang/Object;
.source "RecordEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->dataRemove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 639
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$402(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;Z)Z

    .line 640
    new-instance v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;-><init>()V

    .line 641
    .local v1, "resRst":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$500(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    .line 642
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    .line 643
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->delete_flag:J

    .line 645
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$700(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 646
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$800(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 647
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 648
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 653
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$7;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-virtual {v2, v1}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/RecordStruct;)V

    goto :goto_0
.end method
