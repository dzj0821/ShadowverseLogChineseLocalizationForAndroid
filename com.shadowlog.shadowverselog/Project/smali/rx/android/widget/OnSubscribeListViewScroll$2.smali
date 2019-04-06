.class Lrx/android/widget/OnSubscribeListViewScroll$2;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeListViewScroll;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeListViewScroll;

.field final synthetic val$composite:Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

.field final synthetic val$listener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/widget/OnSubscribeListViewScroll;

    .prologue
    .line 60
    iput-object p1, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->this$0:Lrx/android/widget/OnSubscribeListViewScroll;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$composite:Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    iput-object p3, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$listener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$composite:Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$listener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    .line 64
    return-void
.end method
