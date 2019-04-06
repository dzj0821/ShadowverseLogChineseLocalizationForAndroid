.class Lrx/android/widget/OnSubscribeListViewScroll;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;,
        Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lrx/android/widget/OnListViewScrollEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final listView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/android/widget/OnSubscribeListViewScroll;->listView:Landroid/widget/AbsListView;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/widget/OnSubscribeListViewScroll;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/android/widget/OnListViewScrollEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/widget/OnListViewScrollEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 42
    iget-object v2, p0, Lrx/android/widget/OnSubscribeListViewScroll;->listView:Landroid/widget/AbsListView;

    invoke-static {v2}, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->getFromViewOrCreate(Landroid/widget/AbsListView;)Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    move-result-object v0

    .line 43
    .local v0, "composite":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    new-instance v1, Lrx/android/widget/OnSubscribeListViewScroll$1;

    invoke-direct {v1, p0, p1}, Lrx/android/widget/OnSubscribeListViewScroll$1;-><init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/Subscriber;)V

    .line 59
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    .line 60
    new-instance v2, Lrx/android/widget/OnSubscribeListViewScroll$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/android/widget/OnSubscribeListViewScroll$2;-><init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-static {v2}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 66
    return-void
.end method
