.class Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$2;
.super Ljava/lang/Object;
.source "DeckAnalyzeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->setMyDeckID(IILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

.field final synthetic val$vg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$2;->val$vg:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$2;->val$vg:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->access$100(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 159
    return-void
.end method
