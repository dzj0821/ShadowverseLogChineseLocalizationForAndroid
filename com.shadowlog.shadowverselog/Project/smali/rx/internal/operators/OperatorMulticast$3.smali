.class Lrx/internal/operators/OperatorMulticast$3;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorMulticast;

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v2, v1, Lrx/internal/operators/OperatorMulticast;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    iget-object v0, v1, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 130
    .local v0, "s":Lrx/Subscription;
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    const/4 v3, 0x0

    iput-object v3, v1, Lrx/internal/operators/OperatorMulticast;->subscription:Lrx/Subscriber;

    .line 131
    iget-object v1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    invoke-static {v1}, Lrx/internal/operators/OperatorMulticast;->access$000(Lrx/internal/operators/OperatorMulticast;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 132
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 136
    :cond_0
    return-void

    .line 132
    .end local v0    # "s":Lrx/Subscription;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
