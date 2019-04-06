.class Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;
.super Lrx/Subscriber;
.source "OperatorMergeMaxConcurrent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribeNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field once:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;)V
    .locals 1
    .param p1, "this$0"    # Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->once:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->once:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->once:Z

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    iget-object v1, v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    iget v2, v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->active:I

    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 118
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->subscribeNext()V

    .line 120
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->onCompleted()V

    .line 122
    :cond_0
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;, "Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;->s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 102
    return-void
.end method
