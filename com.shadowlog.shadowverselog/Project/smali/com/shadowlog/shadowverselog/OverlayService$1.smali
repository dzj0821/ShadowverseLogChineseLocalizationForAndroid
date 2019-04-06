.class Lcom/shadowlog/shadowverselog/OverlayService$1;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/OverlayService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/OverlayService;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/OverlayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/OverlayService;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f070082

    const v6, 0x7f070075

    const v5, 0x7f070072

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 147
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 149
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0701e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0700f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0701e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0700f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$1;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->onWindowOpen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method
