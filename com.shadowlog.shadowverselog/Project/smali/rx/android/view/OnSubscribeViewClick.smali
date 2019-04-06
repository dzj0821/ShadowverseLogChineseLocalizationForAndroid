.class final Lrx/android/view/OnSubscribeViewClick;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/view/OnSubscribeViewClick$CachedListeners;,
        Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lrx/android/view/OnClickEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final emitInitialValue:Z

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "emitInitialValue"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p2, p0, Lrx/android/view/OnSubscribeViewClick;->emitInitialValue:Z

    .line 35
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lrx/android/view/OnSubscribeViewClick;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lrx/android/view/OnSubscribeViewClick;

    .prologue
    .line 29
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/view/OnSubscribeViewClick;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/android/view/OnClickEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/view/OnClickEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 41
    iget-object v3, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    invoke-static {v3}, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->getFromViewOrCreate(Landroid/view/View;)Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    move-result-object v0

    .line 43
    .local v0, "composite":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    new-instance v1, Lrx/android/view/OnSubscribeViewClick$1;

    invoke-direct {v1, p0, p1}, Lrx/android/view/OnSubscribeViewClick$1;-><init>(Lrx/android/view/OnSubscribeViewClick;Lrx/Subscriber;)V

    .line 50
    .local v1, "listener":Landroid/view/View$OnClickListener;
    new-instance v3, Lrx/android/view/OnSubscribeViewClick$2;

    invoke-direct {v3, p0, v0, v1}, Lrx/android/view/OnSubscribeViewClick$2;-><init>(Lrx/android/view/OnSubscribeViewClick;Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {v3}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 57
    .local v2, "subscription":Lrx/Subscription;
    iget-boolean v3, p0, Lrx/android/view/OnSubscribeViewClick;->emitInitialValue:Z

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    invoke-static {v3}, Lrx/android/view/OnClickEvent;->create(Landroid/view/View;)Lrx/android/view/OnClickEvent;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 61
    :cond_0
    invoke-virtual {v0, v1}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->addOnClickListener(Landroid/view/View$OnClickListener;)Z

    .line 62
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 63
    return-void
.end method
