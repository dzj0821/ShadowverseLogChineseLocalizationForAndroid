.class Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$1;
.super Ljava/lang/Object;
.source "RecordEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 158
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/RecordEditFragment;I)V

    .line 162
    return-void
.end method
