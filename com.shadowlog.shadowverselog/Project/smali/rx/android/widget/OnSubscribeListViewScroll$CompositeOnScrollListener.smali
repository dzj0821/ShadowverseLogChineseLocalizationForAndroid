.class Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeListViewScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeOnScrollListener"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeListViewScroll$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeListViewScroll$1;

    .prologue
    .line 68
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 73
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 89
    iget-object v1, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 90
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 92
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 83
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 85
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 77
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
