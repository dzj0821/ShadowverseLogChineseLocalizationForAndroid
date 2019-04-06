.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3$1;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3$1;->this$1:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;

    iget-object v1, v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$300(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    return-void
.end method
