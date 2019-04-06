.class public final Lcom/shadowlog/shadowverselog/OverlayService;
.super Landroid/app/Service;
.source "OverlayService.java"

# interfaces
.implements Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;


# static fields
.field private static final APP_API:Ljava/lang/String; = "https://shadowlog.com"

.field private static final LayoutParamFlags:I = 0x8


# instance fields
.field private LongclickListener:Landroid/view/View$OnLongClickListener;

.field private bsDeck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private clickListenerClose:Landroid/view/View$OnClickListener;

.field private clickListenerCommit:Landroid/view/View$OnClickListener;

.field private clickListenerDestroy:Landroid/view/View$OnClickListener;

.field private clickListenerLayoutRecord:Landroid/view/View$OnClickListener;

.field private clickListenerLayoutRino:Landroid/view/View$OnClickListener;

.field private clickListenerOpen:Landroid/view/View$OnClickListener;

.field private commitFlag:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutView:Landroid/view/View;

.field private layout_switch:Ljava/lang/Integer;

.field private mDisplay:Landroid/view/Display;

.field private myDeck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private myDeckToDeckID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private offline_mode:Z

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private params_window1:Landroid/view/WindowManager$LayoutParams;

.field private params_window2:Landroid/view/WindowManager$LayoutParams;

.field private sessionID:Ljava/lang/String;

.field private touchListener:Landroid/view/View$OnTouchListener;

.field private userID:I

.field private viewFlag:Z

.field private windowFlag:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowFlag:Z

    .line 68
    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->viewFlag:Z

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layout_switch:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/OverlayService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/OverlayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/OverlayService;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/shadowlog/shadowverselog/OverlayService;->onCommit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/OverlayService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shadowlog/shadowverselog/OverlayService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/OverlayService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shadowlog/shadowverselog/OverlayService;IZLandroid/widget/Spinner;II)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/OverlayService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/widget/Spinner;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/shadowlog/shadowverselog/OverlayService;->onChangeDeckAdapter(IZLandroid/widget/Spinner;II)V

    return-void
.end method

.method private onChangeDeckAdapter(IZLandroid/widget/Spinner;II)V
    .locals 6
    .param p1, "leader"    # I
    .param p2, "myflag"    # Z
    .param p3, "view"    # Landroid/widget/Spinner;
    .param p4, "defDeck"    # I
    .param p5, "defMyDeck"    # I

    .prologue
    .line 504
    const-string v4, "OverlayService"

    const-string v5, "onChangeDeckAdapter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v4, 0x9

    if-ge p1, v4, :cond_5

    if-lez p1, :cond_5

    .line 506
    const/4 v3, -0x1

    .local v3, "pos":I
    const/4 v1, 0x0

    .line 507
    .local v1, "i":I
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    const v4, 0x7f09005f

    invoke-direct {v0, p0, v4}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 508
    .local v0, "adapter":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 509
    if-eqz p2, :cond_1

    .line 510
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 511
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 512
    .local v2, "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 513
    if-gez v3, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_0

    move v3, v1

    .line 514
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 515
    goto :goto_0

    .line 518
    .end local v2    # "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/OverlayService;->bsDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 519
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/OverlayService;->bsDeck:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 520
    .restart local v2    # "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 521
    if-gez v3, :cond_2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p4, v4, :cond_2

    move v3, v1

    .line 522
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 523
    goto :goto_1

    .line 525
    .end local v2    # "map":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 526
    if-gez v3, :cond_4

    const/4 v3, 0x0

    .line 527
    :cond_4
    invoke-virtual {p3, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 529
    .end local v0    # "adapter":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    .end local v1    # "i":I
    .end local v3    # "pos":I
    :cond_5
    return-void
.end method

.method private onCommit(I)V
    .locals 12
    .param p1, "result"    # I

    .prologue
    .line 626
    const-string v9, "OverlayService"

    const-string v10, "onCommit"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-boolean v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    if-eqz v9, :cond_c

    .line 628
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    .line 629
    new-instance v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    invoke-direct {v5}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;-><init>()V

    .line 632
    .local v5, "resRst":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    iget v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->userID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    .line 635
    iget-object v10, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v11, 0x7f0700ea

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 636
    .local v3, "myLeaderRb":Landroid/widget/RadioButton;
    if-eqz v3, :cond_1

    .line 637
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 666
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v10, 0x7f0701a8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 667
    .local v2, "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 668
    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u2605"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 669
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    .line 670
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeckToDeckID:Ljava/util/Map;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    .line 677
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v11, 0x7f0700ee

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 678
    .local v8, "vsLeaderRb":Landroid/widget/RadioButton;
    if-eqz v8, :cond_4

    .line 679
    invoke-virtual {v8}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :cond_3
    :goto_3
    packed-switch v9, :pswitch_data_1

    .line 708
    :cond_4
    :goto_4
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v10, 0x7f0701aa

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 709
    .local v7, "vsDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    .line 710
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    .line 714
    :cond_5
    iget-object v10, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v11, 0x7f0700eb

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 715
    .local v4, "orderRb":Landroid/widget/RadioButton;
    if-eqz v4, :cond_7

    .line 716
    invoke-virtual {v4}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v9, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2

    :cond_6
    :goto_5
    packed-switch v9, :pswitch_data_2

    .line 727
    :cond_7
    :goto_6
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v10, 0x7f0701a6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 728
    .local v1, "formatSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v1, :cond_8

    .line 729
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    .line 733
    :cond_8
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v10, 0x7f0701a9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 734
    .local v6, "turnSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v6, :cond_9

    .line 735
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->turn:Ljava/lang/Integer;

    .line 739
    :cond_9
    const/4 v9, 0x1

    if-ne p1, v9, :cond_e

    .line 740
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    .line 749
    :cond_a
    :goto_7
    iget-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    .line 750
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsDeckType:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->offline_mode:Z

    if-nez v9, :cond_f

    iget-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->User_id:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_f

    .line 752
    :cond_b
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v10, 0x7f07001b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v10, 0x7f07001b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v10, "\u5165\u529b\u306b\u5fc5\u8981\u306a\u9805\u76ee\u304c\u9078\u629e\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002(\u81ea\u5206\u3068\u76f8\u624b\u306e\u30c7\u30c3\u30ad\u30fb\u5148\u653b/\u5f8c\u653b)"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    .line 772
    .end local v1    # "formatSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "myLeaderRb":Landroid/widget/RadioButton;
    .end local v4    # "orderRb":Landroid/widget/RadioButton;
    .end local v5    # "resRst":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    .end local v6    # "turnSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "vsDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "vsLeaderRb":Landroid/widget/RadioButton;
    :cond_c
    :goto_8
    return-void

    .line 637
    .restart local v3    # "myLeaderRb":Landroid/widget/RadioButton;
    .restart local v5    # "resRst":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    :sswitch_0
    const-string v11, "\u30a8\u30eb\u30d5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string v11, "\u30ed\u30a4\u30e4\u30eb"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v11, "\u30c9\u30e9\u30b4\u30f3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v11, "\u30cd\u30af\u30ed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string v11, "\u30a6\u30a3\u30c3\u30c1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x4

    goto/16 :goto_0

    :sswitch_5
    const-string v11, "\u30f4\u30a1\u30f3\u30d1\u30a4\u30a2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x5

    goto/16 :goto_0

    :sswitch_6
    const-string v11, "\u30d3\u30b7\u30e7\u30c3\u30d7"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string v11, "\u30cd\u30e1\u30b7\u30b9"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x7

    goto/16 :goto_0

    .line 639
    :pswitch_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 642
    :pswitch_1
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 645
    :pswitch_2
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 648
    :pswitch_3
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 651
    :pswitch_4
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 654
    :pswitch_5
    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 657
    :pswitch_6
    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 660
    :pswitch_7
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 672
    .restart local v2    # "myDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_d
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 679
    .restart local v8    # "vsLeaderRb":Landroid/widget/RadioButton;
    :sswitch_8
    const-string v11, "\u30a8\u30eb\u30d5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    goto/16 :goto_3

    :sswitch_9
    const-string v11, "\u30ed\u30a4\u30e4\u30eb"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x1

    goto/16 :goto_3

    :sswitch_a
    const-string v11, "\u30c9\u30e9\u30b4\u30f3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x2

    goto/16 :goto_3

    :sswitch_b
    const-string v11, "\u30cd\u30af\u30ed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x3

    goto/16 :goto_3

    :sswitch_c
    const-string v11, "\u30a6\u30a3\u30c3\u30c1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x4

    goto/16 :goto_3

    :sswitch_d
    const-string v11, "\u30f4\u30a1\u30f3\u30d1\u30a4\u30a2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x5

    goto/16 :goto_3

    :sswitch_e
    const-string v11, "\u30d3\u30b7\u30e7\u30c3\u30d7"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x6

    goto/16 :goto_3

    :sswitch_f
    const-string v11, "\u30cd\u30e1\u30b7\u30b9"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x7

    goto/16 :goto_3

    .line 681
    :pswitch_8
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 684
    :pswitch_9
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 687
    :pswitch_a
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 690
    :pswitch_b
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 693
    :pswitch_c
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 696
    :pswitch_d
    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 699
    :pswitch_e
    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 702
    :pswitch_f
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->vsLeader:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 716
    .restart local v4    # "orderRb":Landroid/widget/RadioButton;
    .restart local v7    # "vsDeckSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :sswitch_10
    const-string v11, "\u5148\u653b"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v9, 0x0

    goto/16 :goto_5

    :sswitch_11
    const-string v11, "\u5f8c\u653b"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v9, 0x1

    goto/16 :goto_5

    .line 718
    :pswitch_10
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    goto/16 :goto_6

    .line 721
    :pswitch_11
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->ord:Ljava/lang/Integer;

    goto/16 :goto_6

    .line 741
    .restart local v1    # "formatSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "turnSp":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_e
    const/4 v9, 0x2

    if-ne p1, v9, :cond_a

    .line 742
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->result:Ljava/lang/Integer;

    goto/16 :goto_7

    .line 755
    :cond_f
    iget-object v9, v5, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->memo:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc8

    if-le v9, v10, :cond_10

    .line 758
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    goto/16 :goto_8

    .line 761
    :cond_10
    iget-boolean v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->offline_mode:Z

    if-nez v9, :cond_11

    .line 763
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget v9, p0, Lcom/shadowlog/shadowverselog/OverlayService;->userID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/shadowlog/shadowverselog/OverlayService;->sessionID:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Lcom/shadowlog/shadowverselog/lib/DataFederate;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 764
    .local v0, "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V

    .line 765
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "in"

    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_8

    .line 768
    .end local v0    # "dFederate":Lcom/shadowlog/shadowverselog/lib/DataFederate;
    :cond_11
    invoke-virtual {p0, v5}, Lcom/shadowlog/shadowverselog/OverlayService;->dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/RecordStruct;)V

    goto/16 :goto_8

    .line 637
    :sswitch_data_0
    .sparse-switch
        -0x3917c529 -> :sswitch_6
        0xbcc3f2 -> :sswitch_0
        0xbd47ab -> :sswitch_3
        0x16d9f1db -> :sswitch_4
        0x16eadfff -> :sswitch_2
        0x16ec9396 -> :sswitch_7
        0x16fa401e -> :sswitch_1
        0x4d3edae9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 679
    :sswitch_data_1
    .sparse-switch
        -0x3917c529 -> :sswitch_e
        0xbcc3f2 -> :sswitch_8
        0xbd47ab -> :sswitch_b
        0x16d9f1db -> :sswitch_c
        0x16eadfff -> :sswitch_a
        0x16ec9396 -> :sswitch_f
        0x16fa401e -> :sswitch_9
        0x4d3edae9 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 716
    :sswitch_data_2
    .sparse-switch
        0xa3cf3 -> :sswitch_10
        0xbf72f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private onDeckListSet()V
    .locals 13

    .prologue
    .line 467
    const-string v6, "OverlayService"

    const-string v7, "onDeckListSet"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/OverlayService;->bsDeck:Ljava/util/Map;

    .line 471
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeck:Ljava/util/Map;

    .line 472
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeckToDeckID:Ljava/util/Map;

    .line 474
    new-instance v3, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 475
    .local v3, "mddb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 476
    sget-object v6, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 477
    .local v1, "e":Ljava/util/Map$Entry;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from SV_MYDECK where delete_flag=0 and myLeader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " order by update_date desc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 478
    .local v4, "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 479
    .local v5, "x":I
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeck:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 481
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeck:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v10, Landroid/util/Pair;

    const-string v7, "aid"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u2605"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v7, "name"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/OverlayService;->myDeckToDeckID:Ljava/util/Map;

    const-string v6, "aid"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v6, "myDeckType"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 485
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "x":I
    :cond_1
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 487
    new-instance v0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->open()V

    .line 489
    sget-object v6, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 490
    .restart local v1    # "e":Ljava/util/Map$Entry;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from SV_DECKTYPE where leader="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " order by _id asc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 491
    .restart local v4    # "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 492
    .restart local v5    # "x":I
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/OverlayService;->bsDeck:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 494
    .restart local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/shadowlog/shadowverselog/OverlayService;->bsDeck:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v10, Landroid/util/Pair;

    const-string v7, "did"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "name"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 497
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "selAry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "x":I
    :cond_3
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->close()V

    .line 498
    return-void
.end method

.method private onInitFormSet()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const v4, 0x7f0700ea

    .line 571
    const-string v0, "OverlayService"

    const-string v1, "onInitFormSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v8, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-direct {v8, p0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 574
    .local v8, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 575
    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doSelectAll()Ljava/util/List;

    move-result-object v6

    .line 576
    .local v6, "_def":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 577
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 579
    .local v7, "def":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "def_myLeader"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 596
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 600
    :goto_1
    const-string v0, "def_myLeader"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 601
    const-string v0, "def_myLeader"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v3, 0x7f0701a8

    .line 602
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const-string v0, "def_myDeckType"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "def_Deck_id"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    .line 601
    invoke-direct/range {v0 .. v5}, Lcom/shadowlog/shadowverselog/OverlayService;->onChangeDeckAdapter(IZLandroid/widget/Spinner;II)V

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 606
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f0701aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    const v2, 0x7f09005f

    invoke-direct {v1, p0, v2}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 607
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f0700eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 610
    const-string v0, "def_format"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/shadowlog/shadowverselog/OverlayService;->setSpinnerFormat(I)V

    .line 613
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->setSpinnerTurn()V

    .line 615
    return-void

    .line 579
    :pswitch_0
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto/16 :goto_0

    :pswitch_1
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :pswitch_3
    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :pswitch_5
    const-string v3, "6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :pswitch_7
    const-string v3, "8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    .line 580
    :pswitch_8
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 582
    :pswitch_9
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 584
    :pswitch_a
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 586
    :pswitch_b
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 588
    :pswitch_c
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 590
    :pswitch_d
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 592
    :pswitch_e
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 594
    :pswitch_f
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 579
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private onLayoutSwitcher(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 345
    if-ne p1, v0, :cond_0

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layout_switch:Ljava/lang/Integer;

    .line 350
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params_window1:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    :cond_0
    return-void
.end method

.method private setSpinnerFormat(I)V
    .locals 9
    .param p1, "def"    # I

    .prologue
    const v8, 0x7f0701a6

    .line 533
    const-string v5, "OverlayService"

    const-string v6, "setSpinnerFormat"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    const v5, 0x7f09005f

    invoke-direct {v0, p0, v5}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 535
    .local v0, "adapterF":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 536
    const/4 v3, 0x0

    .local v3, "pos":I
    const/4 v1, 0x0

    .line 538
    .local v1, "i":I
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/shadowlog/shadowverselog/lib/Defines;->format:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 539
    .local v4, "sortedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 540
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 541
    .local v2, "key":Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/shadowlog/shadowverselog/lib/Defines;->format:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 542
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne p1, v6, :cond_0

    move v3, v1

    .line 543
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 544
    goto :goto_0

    .line 545
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 546
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 547
    return-void
.end method

.method private setSpinnerTurn()V
    .locals 6

    .prologue
    .line 551
    const-string v3, "OverlayService"

    const-string v4, "setSpinnerTurn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;

    const v3, 0x7f09005f

    invoke-direct {v0, p0, v3}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 553
    .local v0, "adapterT":Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->setDropDownViewResource(I)V

    .line 555
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 556
    .local v2, "sortedKeys2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 557
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    .line 558
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 559
    .local v1, "key":Ljava/lang/Integer;
    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/shadowlog/shadowverselog/lib/KeyValuePairArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 561
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v4, 0x7f0701a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 562
    return-void
.end method


# virtual methods
.method public dataFederateCallback(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V
    .locals 12
    .param p1, "result"    # Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const v9, 0x7f07001b

    .line 778
    const-string v7, "OverlayService"

    const-string v8, "dataFederateCallback"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 780
    :cond_0
    const-string v7, "OverlayService"

    const-string v8, "dataFederateCallback - Success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putResult()Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 784
    .local v2, "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    invoke-direct {v3}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;-><init>()V

    .line 785
    .local v3, "resRecord":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    invoke-virtual {v3, v2}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->setHash(Ljava/util/Map;)V

    .line 788
    new-instance v1, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 789
    .local v1, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 790
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doInsert(Ljava/util/Map;)V

    .line 791
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 794
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 795
    .local v5, "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "def_myLeader"

    iget-object v8, v3, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v7, "def_myDeckType"

    iget-object v8, v3, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v7, "def_Deck_id"

    iget-object v8, v3, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v7, "def_format"

    iget-object v8, v3, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v6, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-direct {v6, p0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 800
    .local v6, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 801
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 802
    invoke-virtual {v6}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 805
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->onInitFormSet()V

    .line 811
    :try_start_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->onWindowClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    const-string v7, "\u6226\u7e3e\u306e\u8a18\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 815
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 816
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    .line 828
    .end local v1    # "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    .end local v2    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resRecord":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    .end local v5    # "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :goto_1
    return-void

    .line 821
    :cond_1
    const-string v7, "OverlayService"

    const-string v8, "dataFederateCallback - Error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const-string v0, ""

    .line 823
    .local v0, "aMessage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 824
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    goto :goto_1

    .line 812
    .end local v0    # "aMessage":Ljava/lang/String;
    .restart local v1    # "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    .restart local v2    # "resHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resRecord":Lcom/shadowlog/shadowverselog/struct/RecordStruct;
    .restart local v5    # "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public dataSaveOffline(Lcom/shadowlog/shadowverselog/struct/RecordStruct;)V
    .locals 14
    .param p1, "rst"    # Lcom/shadowlog/shadowverselog/struct/RecordStruct;

    .prologue
    const-wide/16 v12, 0x3e8

    const v11, 0x7f07001b

    const/4 v10, 0x1

    .line 834
    const-string v5, "OverlayService"

    const-string v6, "dataSaveOffline"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v2, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 838
    .local v2, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    iget-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v12

    iput-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->play_date:J

    .line 841
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v12

    iput-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    .line 846
    iget-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->update_date:J

    iput-wide v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->insert_date:J

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "aidMax":I
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 851
    const-string v5, "select aid from SV_RECORD where 1 order by aid desc limit 1"

    invoke-virtual {v2, v5}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 852
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 853
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 854
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "aid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 858
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->aid:Ljava/lang/Integer;

    .line 860
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 861
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->putHash2()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->doInsert(Ljava/util/Map;)V

    .line 862
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 865
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 866
    .local v3, "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "def_myLeader"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myLeader:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v5, "def_myDeckType"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->myDeckType:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string v5, "def_Deck_id"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->Deck_id:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string v5, "def_format"

    iget-object v6, p1, Lcom/shadowlog/shadowverselog/struct/RecordStruct;->format:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    new-instance v4, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-direct {v4, p0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 871
    .local v4, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 872
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 876
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->onInitFormSet()V

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->onWindowClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_1
    const-string v5, "\u6226\u7e3e\u306e\u8a18\u9332\u306b\u6210\u529f\u3057\u307e\u3057\u305f!"

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 886
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 887
    iget-object v5, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iput-boolean v10, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    .line 889
    return-void

    .line 856
    .end local v3    # "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 883
    .restart local v3    # "set":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    .line 96
    const-string v0, "OverlayService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->commitFlag:Z

    .line 104
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7d7

    const/16 v4, 0x8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 110
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 113
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/OverlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowManager:Landroid/view/WindowManager;

    .line 114
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->mDisplay:Landroid/view/Display;

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->inflater:Landroid/view/LayoutInflater;

    .line 116
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f090056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    .line 121
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d7

    const/16 v4, 0x8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params_window1:Landroid/view/WindowManager$LayoutParams;

    .line 127
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params_window1:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 132
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7d7

    const/16 v4, 0x8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params_window2:Landroid/view/WindowManager$LayoutParams;

    .line 138
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params_window2:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 144
    .local v12, "open_button":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/OverlayService$1;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/OverlayService$1;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerOpen:Landroid/view/View$OnClickListener;

    .line 175
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerOpen:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 181
    .local v6, "close_button":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/OverlayService$2;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/OverlayService$2;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerClose:Landroid/view/View$OnClickListener;

    .line 190
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 196
    .local v9, "destroy_button":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/OverlayService$3;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/OverlayService$3;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerDestroy:Landroid/view/View$OnClickListener;

    .line 204
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerDestroy:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 225
    .local v7, "commit_button1":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/OverlayService$4;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/OverlayService$4;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerCommit:Landroid/view/View$OnClickListener;

    .line 231
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerCommit:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 233
    .local v8, "commit_button2":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/OverlayService$5;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/OverlayService$5;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerCommit:Landroid/view/View$OnClickListener;

    .line 239
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->clickListenerCommit:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v0, Lcom/shadowlog/shadowverselog/OverlayService$6;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/OverlayService$6;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->touchListener:Landroid/view/View$OnTouchListener;

    .line 281
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    new-instance v1, Lcom/shadowlog/shadowverselog/OverlayService$7;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/OverlayService$7;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    new-instance v11, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 292
    .local v11, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v11}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 293
    const-string v0, "offline"

    invoke-virtual {v11, v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->offline_mode:Z

    .line 298
    :goto_0
    invoke-virtual {v11}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 301
    new-instance v13, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 302
    .local v13, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v13}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 304
    :try_start_0
    const-string v0, "User_id"

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->userID:I

    .line 305
    const-string v0, "session_id"

    invoke-virtual {v13, v0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->sessionID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    invoke-virtual {v13}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 310
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->onDeckListSet()V

    .line 313
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->onInitFormSet()V

    .line 316
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/OverlayService;->setLeaderChangeEvent()V

    .line 318
    return-void

    .line 296
    .end local v13    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->offline_mode:Z

    goto :goto_0

    .line 306
    .restart local v13    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->userID:I

    const-string v0, ""

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->sessionID:Ljava/lang/String;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 909
    const-string v2, "OverlayService"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 911
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 914
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v3, 0x7f070085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 915
    .local v0, "bLayout":Landroid/view/View;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 916
    .local v1, "wLayout":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 917
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iput-boolean v4, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowFlag:Z

    .line 920
    iput-boolean v4, p0, Lcom/shadowlog/shadowverselog/OverlayService;->viewFlag:Z

    .line 922
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/OverlayService;->stopForeground(Z)V

    .line 923
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    .line 322
    const-string v2, "OverlayService"

    const-string v3, "onStartCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-boolean v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->viewFlag:Z

    if-nez v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iput-boolean v5, p0, Lcom/shadowlog/shadowverselog/OverlayService;->viewFlag:Z

    .line 331
    :cond_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Shadowverse Log"

    .line 332
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "\u5e38\u99d0\u8a18\u9332\u30a6\u30a3\u30f3\u30c9\u30a6"

    .line 333
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f0600bb

    .line 334
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 336
    .local v1, "notification":Landroid/app/Notification;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/OverlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 337
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 338
    invoke-virtual {p0, v5, v1}, Lcom/shadowlog/shadowverselog/OverlayService;->startForeground(ILandroid/app/Notification;)V

    .line 340
    return v5
.end method

.method public onWindowClose()V
    .locals 5

    .prologue
    const v4, 0x7f070085

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 389
    const-string v0, "OverlayService"

    const-string v1, "onWindowClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowFlag:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iput-boolean v3, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowFlag:Z

    .line 400
    :cond_0
    return-void
.end method

.method public onWindowOpen()V
    .locals 6

    .prologue
    const v5, 0x7f070090

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 364
    const-string v0, "OverlayService"

    const-string v1, "onWindowOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-boolean v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowFlag:Z

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layout_switch:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 371
    invoke-direct {p0, v2}, Lcom/shadowlog/shadowverselog/OverlayService;->onLayoutSwitcher(I)V

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iput-boolean v2, p0, Lcom/shadowlog/shadowverselog/OverlayService;->windowFlag:Z

    .line 383
    :cond_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layout_switch:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 374
    invoke-direct {p0, v3}, Lcom/shadowlog/shadowverselog/OverlayService;->onLayoutSwitcher(I)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-direct {p0, v2}, Lcom/shadowlog/shadowverselog/OverlayService;->onLayoutSwitcher(I)V

    goto :goto_0
.end method

.method public setLeaderChangeEvent()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "OverlayService"

    const-string v1, "onInitWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f0700ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shadowlog/shadowverselog/OverlayService$8;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/OverlayService$8;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 434
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/OverlayService;->layoutView:Landroid/view/View;

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/shadowlog/shadowverselog/OverlayService$9;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/OverlayService$9;-><init>(Lcom/shadowlog/shadowverselog/OverlayService;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 461
    return-void
.end method
