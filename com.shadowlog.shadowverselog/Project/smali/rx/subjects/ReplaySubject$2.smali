.class final Lrx/subjects/ReplaySubject$2;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;


# direct methods
.method constructor <init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$2;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    monitor-enter p1

    .line 109
    :try_start_0
    iget-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v4, :cond_2

    .line 110
    :cond_0
    monitor-exit p1

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 113
    const/4 v4, 0x1

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 114
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    const/4 v3, 0x0

    .line 118
    .local v3, "skipFinal":Z
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    .local v0, "idx":I
    iget-object v4, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    iget v2, v4, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    .line 120
    .local v2, "sidx":I
    if-eq v0, v2, :cond_3

    .line 121
    iget-object v4, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    .local v1, "j":Ljava/lang/Integer;
    invoke-virtual {p1, v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 124
    .end local v1    # "j":Ljava/lang/Integer;
    :cond_3
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 125
    :try_start_2
    iget-object v4, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    iget v4, v4, Lrx/subjects/ReplaySubject$UnboundedReplayState;->index:I

    if-ne v2, v4, :cond_4

    .line 126
    const/4 v4, 0x0

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 127
    const/4 v3, 0x1

    .line 128
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 133
    if-nez v3, :cond_1

    .line 134
    monitor-enter p1

    .line 135
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 136
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 114
    .end local v0    # "idx":I
    .end local v2    # "sidx":I
    .end local v3    # "skipFinal":Z
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 130
    .restart local v0    # "idx":I
    .restart local v2    # "sidx":I
    .restart local v3    # "skipFinal":Z
    :cond_4
    :try_start_5
    monitor-exit p1

    goto :goto_1

    :catchall_2
    move-exception v4

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 133
    .end local v0    # "idx":I
    .end local v2    # "sidx":I
    :catchall_3
    move-exception v4

    if-nez v3, :cond_5

    .line 134
    monitor-enter p1

    .line 135
    const/4 v5, 0x0

    :try_start_7
    iput-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 136
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    throw v4

    :catchall_4
    move-exception v4

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v4
.end method
