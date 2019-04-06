.class Lcom/shadowlog/shadowverselog/OverlayService$3;
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
    .line 196
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/OverlayService$3;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService$3;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/OverlayService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method
