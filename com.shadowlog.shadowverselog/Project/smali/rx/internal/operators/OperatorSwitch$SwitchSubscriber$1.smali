.class Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;-><init>(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-boolean v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 77
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    .line 80
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v2, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v0, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .line 82
    .local v0, "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    if-nez v1, :cond_3

    .line 83
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iput-wide p1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->initialRequested:J

    .line 89
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requestMore(J)V

    goto :goto_0

    .line 87
    :cond_3
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-static {v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$000(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-static {v1, v4, v5}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$002(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J

    goto :goto_1

    .line 89
    .end local v0    # "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
