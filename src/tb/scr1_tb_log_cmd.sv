`include "scr1_csr.svh"

module scr1_tb_log_cmd();
always_ff @(posedge scr1_top_tb_ahb.i_top.i_imem_ahb.clk) begin
    if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_resp == 2'b01) begin
        // valid data from ahb router
        if (
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6 : 0] == 7'b0110011) &
            (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[14 : 12] == 3'b000)
        ) begin
            // detect and command
            $display("PC: %d", scr1_top_tb_ahb.i_top.i_core_top.dm_pc_sample);
            $display("csr_mstatus_mie_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mstatus_mie_ff);
            $display("csr_mstatus_mpie_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mstatus_mpie_ff);
            $display("csr_mtvec_base: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mtvec_base);
            $display("csr_mtvec_mode: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mtvec_mode);
            $display("csr_mie_meie_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mie_meie_ff);
            $display("csr_mie_mtie_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mie_mtie_ff);
            $display("csr_mie_msie_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mie_msie_ff);
            $display("csr_mip_meip: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mip_meip);
            $display("csr_mip_mtip: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mip_mtip);
            $display("csr_mip_msip: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mip_msip);
            $display("csr_mepc_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mepc_ff);
            $display("csr_mcause_i_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mcause_i_ff);
            $display("csr_mcause_ec_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mcause_ec_ff);
            $display("csr_mtval_ff: %d", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mtval_ff);    
        end
    end
end
endmodule