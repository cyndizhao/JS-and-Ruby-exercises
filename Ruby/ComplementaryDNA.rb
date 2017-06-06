def DNA_strand(dna)
  dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
end

#Better solution
# def DNA_strand(dna)
#   dna.tr("ACTG", "TGAC")
# end
