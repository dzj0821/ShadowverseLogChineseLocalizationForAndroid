.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->updateDeckLabel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method
