.class Lcom/shadowlog/shadowverselog/OverlayService$9;
.super Ljava/lang/Object;
.source "OverlayService.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/OverlayService;->setLeaderChangeEvent()V
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
    .line 434
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/OverlayService$9;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "leaderID":I
    packed-switch p2, :pswitch_data_0

    .line 456
    :goto_0
    if-lez v1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService$9;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/OverlayService$9;->this$0:Lcom/shadowlog/shadowverselog/OverlayService;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/OverlayService;->access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0701aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/OverlayService;->access$400(Lcom/shadowlog/shadowverselog/OverlayService;IZLandroid/widget/Spinner;II)V

    .line 459
    :cond_0
    return-void

    .line 439
    :pswitch_0
    const/4 v1, 0x1

    .line 440
    goto :goto_0

    .line 441
    :pswitch_1
    const/4 v1, 0x2

    .line 442
    goto :goto_0

    .line 443
    :pswitch_2
    const/4 v1, 0x3

    .line 444
    goto :goto_0

    .line 445
    :pswitch_3
    const/4 v1, 0x4

    .line 446
    goto :goto_0

    .line 447
    :pswitch_4
    const/4 v1, 0x5

    .line 448
    goto :goto_0

    .line 449
    :pswitch_5
    const/4 v1, 0x6

    .line 450
    goto :goto_0

    .line 451
    :pswitch_6
    const/4 v1, 0x7

    .line 452
    goto :goto_0

    .line 453
    :pswitch_7
    const/16 v1, 0x8

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700dc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
