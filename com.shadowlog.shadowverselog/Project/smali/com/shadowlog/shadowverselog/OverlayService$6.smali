.class Lcom/shadowlog/shadowverselog/OverlayService$6;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/OverlayService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downTime:J

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/shadowlog/shadowverselog/OverlayService;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/OverlayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/OverlayService;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateViewLocation()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/OverlayService;->access$300(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/OverlayService;->access$200(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 274
    :goto_0
    return v6

    .line 254
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->downTime:J

    .line 255
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/OverlayService;->access$200(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialX:I

    .line 256
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/OverlayService;->access$200(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialY:I

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialTouchX:F

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialTouchY:F

    goto :goto_0

    .line 261
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 262
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->downTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/OverlayService$6;->updateViewLocation()V

    goto :goto_0

    .line 269
    .end local v0    # "currentTime":J
    :pswitch_2
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/OverlayService;->access$200(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialTouchX:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 270
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/OverlayService;->access$200(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->initialTouchY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 271
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/OverlayService;->access$300(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/OverlayService$6;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/OverlayService;->access$200(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
