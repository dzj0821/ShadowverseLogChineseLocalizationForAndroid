.class Lrx/internal/operators/OnSubscribeRefCount$2;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->disconnect()Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeRefCount;

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$300(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$400(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$000(Lrx/internal/operators/OnSubscribeRefCount;)Lrx/subscriptions/CompositeSubscription;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    invoke-static {v0, v1}, Lrx/internal/operators/OnSubscribeRefCount;->access$002(Lrx/internal/operators/OnSubscribeRefCount;Lrx/subscriptions/CompositeSubscription;)Lrx/subscriptions/CompositeSubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    invoke-static {v0}, Lrx/internal/operators/OnSubscribeRefCount;->access$300(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeRefCount;->access$300(Lrx/internal/operators/OnSubscribeRefCount;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
