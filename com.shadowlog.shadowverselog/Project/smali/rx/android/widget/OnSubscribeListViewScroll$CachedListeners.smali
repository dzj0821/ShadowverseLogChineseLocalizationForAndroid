.class Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeListViewScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedListeners"
.end annotation


# static fields
.field private static final sCachedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/widget/AbsListView;)Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    .locals 3
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 101
    sget-object v2, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    .line 102
    .local v0, "cached":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    if-eqz v0, :cond_0

    .line 111
    .end local v0    # "cached":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    :goto_0
    return-object v0

    .line 106
    .restart local v0    # "cached":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    :cond_0
    new-instance v1, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;-><init>(Lrx/android/widget/OnSubscribeListViewScroll$1;)V

    .line 108
    .local v1, "listener":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    sget-object v2, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    move-object v0, v1

    .line 111
    goto :goto_0
.end method
