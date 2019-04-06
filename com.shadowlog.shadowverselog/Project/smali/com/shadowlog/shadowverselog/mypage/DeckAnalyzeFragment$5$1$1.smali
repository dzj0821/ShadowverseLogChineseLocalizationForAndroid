.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1$1;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1$1;->this$2:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1$1;->this$2:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v1, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1$1;->this$2:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$5;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$600(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "mydeck"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$1100(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;I)V

    .line 401
    return-void
.end method
