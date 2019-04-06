.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;,
        Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lrx/android/widget/OnItemClickEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->adapterView:Landroid/widget/AdapterView;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/android/widget/OnItemClickEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/widget/OnItemClickEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 43
    iget-object v3, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->adapterView:Landroid/widget/AdapterView;

    invoke-static {v3}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->getFromViewOrCreate(Landroid/widget/AdapterView;)Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    move-result-object v0

    .line 45
    .local v0, "composite":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    new-instance v1, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;

    invoke-direct {v1, p0, p1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;-><init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/Subscriber;)V

    .line 52
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v3, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;

    invoke-direct {v3, p0, v0, v1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;-><init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {v3}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 59
    .local v2, "subscription":Lrx/Subscription;
    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->addOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z

    .line 60
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 61
    return-void
.end method
