.class Lrx/android/widget/OnSubscribeListViewScroll$1;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeListViewScroll;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentScrollState:I

.field final synthetic this$0:Lrx/android/widget/OnSubscribeListViewScroll;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/Subscriber;)V
    .locals 1
    .param p1, "this$0"    # Lrx/android/widget/OnSubscribeListViewScroll;

    .prologue
    .line 43
    iput-object p1, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->this$0:Lrx/android/widget/OnSubscribeListViewScroll;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->currentScrollState:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 53
    iget v1, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->currentScrollState:I

    invoke-static {p1, v1, p2, p3, p4}, Lrx/android/widget/OnListViewScrollEvent;->create(Landroid/widget/AbsListView;IIII)Lrx/android/widget/OnListViewScrollEvent;

    move-result-object v0

    .line 55
    .local v0, "event":Lrx/android/widget/OnListViewScrollEvent;
    iget-object v1, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 48
    iput p2, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->currentScrollState:I

    .line 49
    return-void
.end method
