.class Lcom/shadowlog/shadowverselog/OverlayService$5;
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
    .line 233
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/OverlayService$5;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService$5;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$100(Lcom/shadowlog/shadowverselog/OverlayService;I)V

    .line 237
    return-void
.end method
